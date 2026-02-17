import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';

/// la suma entre el precio del items principal mas los adicionales
double preciototal(
  double precioitem,
  List<double> preciosadicionales,
) {
  final double sumaExtras = preciosadicionales.fold(0.0, (a, b) => a + b);
  return precioitem + sumaExtras;
}

double? sumarValoresDecimal(List<double>? listaValoresDecimales) {
// sumar valores decimales
  if (listaValoresDecimales == null || listaValoresDecimales.isEmpty) {
    return null;
  }
  double suma = 0.0;
  for (double valor in listaValoresDecimales) {
    suma += valor;
  }
  return suma;
}

String? getPaymentIdFromUrll() {
  try {
    // Obtiene la URL actual del navegador (funciona sin dart:html)
    final uri = Uri.parse(Uri.base.toString());

    // Busca el parámetro 'payment_id' o 'payment_Id'
    final paymentId =
        uri.queryParameters['payment_id'] ?? uri.queryParameters['payment_Id'];

    // Retorna el valor del ID si existe, o vacío si no
    return paymentId ?? '';
  } catch (e) {
    // Si hay error (por ejemplo, no se ejecuta en web), retorna vacío
    return '';
  }
}

String generarUrlPedido(
  List<CarritoStruct> carrito,
  ClienteStructStruct cliente,
  CostoenvioStruct costoenvio,
) {
  const String numero = "56963680359";

  if (carrito.isEmpty) {
    return "https://wa.me/$numero?text=Hola, quiero realizar un pedido.";
  }

  final codigo = (1000 + math.Random().nextInt(9000)).toString();
  String mensaje = "⭐ *Nuevo Pedido* ⭐\n#PEDIDO $codigo\n\n";

  // Datos del cliente
  final nombreCliente = cliente.nombresCliente ?? "No especificado";
  final telefono = cliente.telefono ?? "No especificado";
  final direccion1 = cliente.direccion1 ?? "No especificado";
  final direccion2 = cliente.direccion2 ?? "";
  // NUEVO: Extraemos la fecha de entrega
  final fechaEntrega = cliente.fechadeentrega ?? "No especificada";

  mensaje += "👤 *Cliente:* $nombreCliente\n";
  mensaje += "📞 *Teléfono:* $telefono\n";
  mensaje += "📍 *Dirección:* $direccion1\n";
  if (direccion2.isNotEmpty) mensaje += "🏢 *Detalles:* $direccion2\n";
  // NUEVO: Agregamos la fecha al mensaje
  mensaje += "📅 *Fecha de Entrega:* $fechaEntrega\n";

  mensaje += "\n🛒 *Productos:*\n";

  double subtotalGeneral = 0;

  for (final item in carrito) {
    final nombre = item.nombreItem ?? "Producto";
    final cantidad = item.cantidad ?? 1;
    final subItem = item.subTotal?.toDouble() ?? 0.0;

    subtotalGeneral += subItem;

    mensaje +=
        "• ${cantidad}x $nombre (Subtotal: \$${subItem.toStringAsFixed(0)})\n";

    if (item.ingredientessadicionales != null &&
        item.ingredientessadicionales!.isNotEmpty) {
      for (final ing in item.ingredientessadicionales!) {
        mensaje += "   + $ing\n";
      }
    }
  }

  final envio = costoenvio.valorenvio?.toDouble() ?? 0.0;
  final total = subtotalGeneral + envio;

  mensaje += "\n--- Totales ---\n";
  mensaje += "💵 *Subtotal:* \$${subtotalGeneral.toStringAsFixed(0)}\n";
  mensaje += "🚚 *Envío:* \$${envio.toStringAsFixed(0)}\n";
  mensaje += "💰 *TOTAL:* \$${total.toStringAsFixed(0)}\n\n";

  mensaje +=
      "Este es mi pedido realizado en la página web ¡PACKAGE BREAKFAST! quedo atento.";

  final mensajeCodificado = Uri.encodeComponent(mensaje);

  return "https://api.whatsapp.com/send?phone=$numero&text=$mensajeCodificado";
}

String generarUrlPedido2(
  List<CarritoStruct> carrito,
  ClienteStructStruct cliente,
  CostoenvioStruct costoenvio,
) {
  const String numero = "56963680359";

  if (carrito.isEmpty) {
    return "https://wa.me/$numero?text=Hola, quiero realizar un pedido.";
  }

  final codigo = (1000 + math.Random().nextInt(9000)).toString();
  String mensaje = "⭐ *Nuevo Pedido* ⭐\n#PEDIDO $codigo\n\n";

  // Datos del cliente
  final nombreCliente = cliente.nombresCliente ?? "No especificado";
  final telefono = cliente.telefono ?? "No especificado";
  final direccion1 = cliente.direccion1 ?? "No especificado";
  final direccion2 = cliente.direccion2 ?? "";
  // NUEVO: Extraemos la fecha de entrega
  final fechaEntrega = cliente.fechadeentrega ?? "No especificada";

  mensaje += "👤 *Cliente:* $nombreCliente\n";
  mensaje += "📞 *Teléfono:* $telefono\n";
  mensaje += "📍 *Dirección:* $direccion1\n";
  if (direccion2.isNotEmpty) mensaje += "🏢 *Detalles:* $direccion2\n";
  // NUEVO: Agregamos la fecha al mensaje
  mensaje += "📅 *Fecha de Entrega:* $fechaEntrega\n";

  mensaje += "\n🛒 *Productos:*\n";

  double subtotalGeneral = 0;

  for (final item in carrito) {
    final nombre = item.nombreItem ?? "Producto";
    final cantidad = item.cantidad ?? 1;
    final subItem = item.subTotal?.toDouble() ?? 0.0;

    subtotalGeneral += subItem;

    mensaje +=
        "• ${cantidad}x $nombre (Subtotal: \$${subItem.toStringAsFixed(0)})\n";

    if (item.ingredientessadicionales != null &&
        item.ingredientessadicionales!.isNotEmpty) {
      for (final ing in item.ingredientessadicionales!) {
        mensaje += "   + $ing\n";
      }
    }
  }

  final envio = costoenvio.valorenvio?.toDouble() ?? 0.0;
  final total = subtotalGeneral + envio;

  mensaje += "\n--- Totales ---\n";
  mensaje += "💵 *Subtotal:* \$${subtotalGeneral.toStringAsFixed(0)}\n";
  mensaje += "🚚 *Envío:* \$${envio.toStringAsFixed(0)}\n";
  mensaje += "💰 *TOTAL:* \$${total.toStringAsFixed(0)}\n\n";

  mensaje +=
      "Este es mi pedido realizado en la página web ¡PACKAGE BREAKFAST! Quiero mi link de transbank, quedo atento.";

  final mensajeCodificado = Uri.encodeComponent(mensaje);

  return "https://api.whatsapp.com/send?phone=$numero&text=$mensajeCodificado";
}

String generarMensajePedidoEmail(
  List<CarritoStruct> carrito,
  ClienteStructStruct cliente,
  CostoenvioStruct costoenvio,
) {
  if (carrito.isEmpty) return '';

  String _fmtCLP(num n) {
    final s = n.round().toString();
    final buf = StringBuffer();
    int count = 0;
    for (int i = s.length - 1; i >= 0; i--) {
      buf.write(s[i]);
      count++;
      if (count % 3 == 0 && i != 0) buf.write('.');
    }
    final miles = buf.toString().split('').reversed.join();
    return '$miles CLP';
  }

  final codigo = (1000 + math.Random().nextInt(9000)).toString();
  final buffer = StringBuffer();

  // Iniciamos con una estructura HTML simple
  buffer.write('<html><body>');
  buffer.write('<h2>Nuevo Pedido #$codigo</h2>');

  // Datos del cliente
  final nombreCliente = cliente.nombresCliente ?? '';
  final telefono = cliente.telefono ?? '';
  final direccion1 = cliente.direccion1 ?? '';
  final direccion2 = cliente.direccion2 ?? '';
  // NUEVO: Extraemos la fecha de entrega del schema
  final fechaEntrega = cliente.fechadeentrega ?? 'No especificada';

  buffer.write('<b>Cliente:</b> $nombreCliente<br>');
  if (telefono.isNotEmpty) buffer.write('<b>Teléfono:</b> $telefono<br>');
  buffer.write('<b>Dirección:</b> $direccion1<br>');
  if (direccion2.isNotEmpty) buffer.write('<b>Detalles:</b> $direccion2<br>');
  // NUEVO: Agregamos la fecha al HTML
  buffer.write('<b>Fecha de Entrega:</b> $fechaEntrega<br>');

  buffer.write('<br><h3>Productos:</h3>');

  double subtotalGeneral = 0;

  for (final item in carrito) {
    final nombre = item.nombreItem ?? '';
    final cantidad = item.cantidad ?? 1;
    final subItem = item.subTotal?.toDouble() ?? 0;
    subtotalGeneral += subItem;

    buffer.write('<b>${cantidad}x $nombre</b><br>');

    if (item.ingredientessadicionales != null &&
        item.ingredientessadicionales!.isNotEmpty) {
      for (final ing in item.ingredientessadicionales!) {
        buffer.write('&nbsp;&nbsp;&nbsp;&nbsp;- $ing<br>');
      }
    }

    buffer.write('Subtotal ítem: ${_fmtCLP(subItem)}<br><br>');
  }

  final envio = costoenvio.valorenvio?.toDouble() ?? 0;
  final total = subtotalGeneral + envio;

  buffer.write('<hr>');
  buffer.write('<b>Subtotal:</b> ${_fmtCLP(subtotalGeneral)}<br>');
  buffer.write('<b>Envío:</b> ${_fmtCLP(envio)}<br>');
  buffer.write('<b>Total:</b> ${_fmtCLP(total)}<br>');
  buffer.write('<br>');
  buffer.write(
      '<i>Este es mi pedido realizado en la página web ¡PACKAGE BREAKFAST! quedo atento.</i>');

  buffer.write('</body></html>');

  // ELIMINA CUALQUIER SALTO DE LÍNEA RESIDUAL QUE PUEDA ENSUCIAR EL JSON
  return buffer.toString().replaceAll('\n', '').replaceAll('\r', '');
}

String generarMensajePedido(
  List<CarritoStruct> carrito,
  ClienteStructStruct cliente,
  CostoenvioStruct costoenvio,
) {
  if (carrito.isEmpty) {
    return Uri.encodeComponent("Hola, quiero hacer un pedido.");
  }

  final codigo = (1000 + math.Random().nextInt(9000)).toString();
  String mensaje = "**Nuevo Pedido**\n#PEDIDO $codigo\n\n";

  // --- Datos del cliente ---
  final nombreCliente = cliente.nombresCliente ?? "";
  final telefono = cliente.telefono ?? "";
  final direccion1 = cliente.direccion1 ?? "";
  final direccion2 = cliente.direccion2 ?? "";

  mensaje += "👤 Cliente: $nombreCliente\n";
  if (telefono.isNotEmpty) mensaje += "📞 Teléfono: $telefono\n";
  mensaje += "📍 Dirección: $direccion1\n";
  if (direccion2.isNotEmpty) mensaje += "🏢 Detalles: $direccion2\n";
  mensaje += "\n🛒 *Productos:*\n\n";

  // --- Items ---
  double subtotalGeneral = 0;

  for (final item in carrito) {
    final nombre = item.nombreItem ?? "";
    final cantidad = item.cantidad ?? 1;
    final subItem = item.subTotal?.toDouble() ?? 0;

    subtotalGeneral += subItem;

    mensaje += "${cantidad}x $nombre\n";

    if (item.ingredientessadicionales != null &&
        item.ingredientessadicionales.isNotEmpty) {
      for (final ing in item.ingredientessadicionales) {
        mensaje += "   ➕ $ing\n";
      }
    }

    mensaje += "   Subtotal ítem: ${subItem.toStringAsFixed(0)}\n\n";
  }

  // --- Envío ---
  final envio = costoenvio.valorenvio?.toDouble() ?? 0;
  final total = subtotalGeneral + envio;

  mensaje += "💵 Subtotal: ${subtotalGeneral.toStringAsFixed(0)}\n";
  mensaje += "🚚 Envío: ${envio.toStringAsFixed(0)}\n";
  mensaje += "💰 Total: ${total.toStringAsFixed(0)}\n\n";

  mensaje +=
      "Este es mi pedido realizado en la página web ¡PACKAGE BREAKFAST! quedo atento.";

  return Uri.encodeComponent(mensaje);
}
