import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _AlfajorN = prefs.getDouble('ff_AlfajorN') ?? _AlfajorN;
    });
    _safeInit(() {
      _Aviso = prefs.getBool('ff_Aviso') ?? _Aviso;
    });
    _safeInit(() {
      _ingredientestext =
          prefs.getStringList('ff_ingredientestext') ?? _ingredientestext;
    });
    _safeInit(() {
      _precioadicionales1 = prefs
              .getStringList('ff_precioadicionales1')
              ?.map(double.parse)
              .toList() ??
          _precioadicionales1;
    });
    _safeInit(() {
      _direccion1 = prefs.getString('ff_direccion1') ?? _direccion1;
    });
    _safeInit(() {
      _valordelEnvio = prefs.getDouble('ff_valordelEnvio') ?? _valordelEnvio;
    });
    _safeInit(() {
      _ListadeCarrito = prefs
              .getStringList('ff_ListadeCarrito')
              ?.map((x) {
                try {
                  return CarritoStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  // print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _ListadeCarrito;
    });
    _safeInit(() {
      _id = prefs.getString('ff_id') ?? _id;
    });
    _safeInit(() {
      _nombrecliente = prefs.getString('ff_nombrecliente') ?? _nombrecliente;
    });
    _safeInit(() {
      _direccion2 = prefs.getString('ff_direccion2') ?? _direccion2;
    });
    _safeInit(() {
      _telefono = prefs.getString('ff_telefono') ?? _telefono;
    });
    _safeInit(() {
      _email = prefs.getString('ff_email') ?? _email;
    });
    _safeInit(() {
      _Fechadeentrega = prefs.getString('ff_Fechadeentrega') ?? _Fechadeentrega;
    });
    _safeInit(() {
      _preciototal = prefs.getDouble('ff_preciototal') ?? _preciototal;
    });
    _safeInit(() {
      _aceptar = prefs.getBool('ff_aceptar') ?? _aceptar;
    });
    _safeInit(() {
      _transferencia = prefs.getBool('ff_transferencia') ?? _transferencia;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  double _AlfajorN = 600.0;
  double get AlfajorN => _AlfajorN;
  set AlfajorN(double value) {
    _AlfajorN = value;
    prefs.setDouble('ff_AlfajorN', value);
  }

  double _MiniDonaN = 1000.0;
  double get MiniDonaN => _MiniDonaN;
  set MiniDonaN(double value) {
    _MiniDonaN = value;
  }

  double _VasodeFrutaN = 1500.0;
  double get VasodeFrutaN => _VasodeFrutaN;
  set VasodeFrutaN(double value) {
    _VasodeFrutaN = value;
  }

  double _SndwichN = 1500.0;
  double get SndwichN => _SndwichN;
  set SndwichN(double value) {
    _SndwichN = value;
  }

  double _CroassaintjamnquesoN = 2500.0;
  double get CroassaintjamnquesoN => _CroassaintjamnquesoN;
  set CroassaintjamnquesoN(double value) {
    _CroassaintjamnquesoN = value;
  }

  double _MiniCroassaintjamonquesoN = 1500.0;
  double get MiniCroassaintjamonquesoN => _MiniCroassaintjamonquesoN;
  set MiniCroassaintjamonquesoN(double value) {
    _MiniCroassaintjamonquesoN = value;
  }

  double _ChocolateArtesanalN = 1500.0;
  double get ChocolateArtesanalN => _ChocolateArtesanalN;
  set ChocolateArtesanalN(double value) {
    _ChocolateArtesanalN = value;
  }

  double _YogurtartesanalN = 1500.0;
  double get YogurtartesanalN => _YogurtartesanalN;
  set YogurtartesanalN(double value) {
    _YogurtartesanalN = value;
  }

  double _Leche250mlN = 1500.0;
  double get Leche250mlN => _Leche250mlN;
  set Leche250mlN(double value) {
    _Leche250mlN = value;
  }

  double _Jugo250mlN = 1500.0;
  double get Jugo250mlN => _Jugo250mlN;
  set Jugo250mlN(double value) {
    _Jugo250mlN = value;
  }

  double _CopaN = 1500.0;
  double get CopaN => _CopaN;
  set CopaN(double value) {
    _CopaN = value;
  }

  double _GlobometalizadoN = 1500.0;
  double get GlobometalizadoN => _GlobometalizadoN;
  set GlobometalizadoN(double value) {
    _GlobometalizadoN = value;
  }

  String _Alfajor = 'Alfajor';
  String get Alfajor => _Alfajor;
  set Alfajor(String value) {
    _Alfajor = value;
  }

  String _MiniDona = 'Mini Dona';
  String get MiniDona => _MiniDona;
  set MiniDona(String value) {
    _MiniDona = value;
  }

  String _VasoconFruta = 'Vaso con Fruta';
  String get VasoconFruta => _VasoconFruta;
  set VasoconFruta(String value) {
    _VasoconFruta = value;
  }

  String _Sandwich = 'Sandwich';
  String get Sandwich => _Sandwich;
  set Sandwich(String value) {
    _Sandwich = value;
  }

  String _CroassaintdeJamnQueso = 'Croassaint de Jamón/Queso';
  String get CroassaintdeJamnQueso => _CroassaintdeJamnQueso;
  set CroassaintdeJamnQueso(String value) {
    _CroassaintdeJamnQueso = value;
  }

  String _MiniCroassaintdeJamnQueso = 'MiniCroassaint de Jamón/Queso';
  String get MiniCroassaintdeJamnQueso => _MiniCroassaintdeJamnQueso;
  set MiniCroassaintdeJamnQueso(String value) {
    _MiniCroassaintdeJamnQueso = value;
  }

  String _ChocolateArtesanal = 'Chocolate Artesanal';
  String get ChocolateArtesanal => _ChocolateArtesanal;
  set ChocolateArtesanal(String value) {
    _ChocolateArtesanal = value;
  }

  String _YogurtArtesanal = 'Yogurt Artesanal';
  String get YogurtArtesanal => _YogurtArtesanal;
  set YogurtArtesanal(String value) {
    _YogurtArtesanal = value;
  }

  String _Leche250ml = 'Leche 250ml';
  String get Leche250ml => _Leche250ml;
  set Leche250ml(String value) {
    _Leche250ml = value;
  }

  String _Jugo250ml = 'Jugo 250ml';
  String get Jugo250ml => _Jugo250ml;
  set Jugo250ml(String value) {
    _Jugo250ml = value;
  }

  String _Copa = 'Copa';
  String get Copa => _Copa;
  set Copa(String value) {
    _Copa = value;
  }

  String _GloboMetalizado = 'Globo Metalizado';
  String get GloboMetalizado => _GloboMetalizado;
  set GloboMetalizado(String value) {
    _GloboMetalizado = value;
  }

  String _ElBosque = 'El Bosque';
  String get ElBosque => _ElBosque;
  set ElBosque(String value) {
    _ElBosque = value;
  }

  double _ElbosqueN = 3000.0;
  double get ElbosqueN => _ElbosqueN;
  set ElbosqueN(double value) {
    _ElbosqueN = value;
  }

  String _LaCisterna = 'La Cisterna';
  String get LaCisterna => _LaCisterna;
  set LaCisterna(String value) {
    _LaCisterna = value;
  }

  String _SanRamn = 'San Ramón';
  String get SanRamn => _SanRamn;
  set SanRamn(String value) {
    _SanRamn = value;
  }

  String _PuenteAlto = 'Puente Alto';
  String get PuenteAlto => _PuenteAlto;
  set PuenteAlto(String value) {
    _PuenteAlto = value;
  }

  String _SanBernardo = 'San Bernardo';
  String get SanBernardo => _SanBernardo;
  set SanBernardo(String value) {
    _SanBernardo = value;
  }

  String _LaFlorida = 'La Florida ';
  String get LaFlorida => _LaFlorida;
  set LaFlorida(String value) {
    _LaFlorida = value;
  }

  String _LaGranja = 'La Granja';
  String get LaGranja => _LaGranja;
  set LaGranja(String value) {
    _LaGranja = value;
  }

  String _LaPintana = 'La Pintana';
  String get LaPintana => _LaPintana;
  set LaPintana(String value) {
    _LaPintana = value;
  }

  String _LaReina = 'La Reina';
  String get LaReina => _LaReina;
  set LaReina(String value) {
    _LaReina = value;
  }

  String _LasCondes = 'Las Condes';
  String get LasCondes => _LasCondes;
  set LasCondes(String value) {
    _LasCondes = value;
  }

  String _LoBarnechea = 'Lo Barnechea';
  String get LoBarnechea => _LoBarnechea;
  set LoBarnechea(String value) {
    _LoBarnechea = value;
  }

  String _LoPrado = 'Lo Prado';
  String get LoPrado => _LoPrado;
  set LoPrado(String value) {
    _LoPrado = value;
  }

  String _Macul = 'Macul';
  String get Macul => _Macul;
  set Macul(String value) {
    _Macul = value;
  }

  String _Maipu = 'Maipu';
  String get Maipu => _Maipu;
  set Maipu(String value) {
    _Maipu = value;
  }

  String _uoa = 'Ñuñoa';
  String get uoa => _uoa;
  set uoa(String value) {
    _uoa = value;
  }

  String _SanJoaquin = 'San Joaquin';
  String get SanJoaquin => _SanJoaquin;
  set SanJoaquin(String value) {
    _SanJoaquin = value;
  }

  String _SanMiguel = 'San Miguel';
  String get SanMiguel => _SanMiguel;
  set SanMiguel(String value) {
    _SanMiguel = value;
  }

  String _Santiago = 'Santiago';
  String get Santiago => _Santiago;
  set Santiago(String value) {
    _Santiago = value;
  }

  String _Vitacura = 'Vitacura';
  String get Vitacura => _Vitacura;
  set Vitacura(String value) {
    _Vitacura = value;
  }

  double _LacisternaN = 3000.0;
  double get LacisternaN => _LacisternaN;
  set LacisternaN(double value) {
    _LacisternaN = value;
  }

  double _SanRamonN = 3000.0;
  double get SanRamonN => _SanRamonN;
  set SanRamonN(double value) {
    _SanRamonN = value;
  }

  double _PuenteAltoN = 6000.0;
  double get PuenteAltoN => _PuenteAltoN;
  set PuenteAltoN(double value) {
    _PuenteAltoN = value;
  }

  double _SanBernardoN = 4000.0;
  double get SanBernardoN => _SanBernardoN;
  set SanBernardoN(double value) {
    _SanBernardoN = value;
  }

  double _LaFloridaN = 5000.0;
  double get LaFloridaN => _LaFloridaN;
  set LaFloridaN(double value) {
    _LaFloridaN = value;
  }

  double _LaGranjaN = 4000.0;
  double get LaGranjaN => _LaGranjaN;
  set LaGranjaN(double value) {
    _LaGranjaN = value;
  }

  double _LareinaN = 6000.0;
  double get LareinaN => _LareinaN;
  set LareinaN(double value) {
    _LareinaN = value;
  }

  double _LaPintanaN = 4000.0;
  double get LaPintanaN => _LaPintanaN;
  set LaPintanaN(double value) {
    _LaPintanaN = value;
  }

  double _LascondesN = 6000.0;
  double get LascondesN => _LascondesN;
  set LascondesN(double value) {
    _LascondesN = value;
  }

  double _LoBarnecheaN = 15000.0;
  double get LoBarnecheaN => _LoBarnecheaN;
  set LoBarnecheaN(double value) {
    _LoBarnecheaN = value;
  }

  double _LopradoN = 5000.0;
  double get LopradoN => _LopradoN;
  set LopradoN(double value) {
    _LopradoN = value;
  }

  double _MaculN = 6000.0;
  double get MaculN => _MaculN;
  set MaculN(double value) {
    _MaculN = value;
  }

  double _MaipuN = 6000.0;
  double get MaipuN => _MaipuN;
  set MaipuN(double value) {
    _MaipuN = value;
  }

  double _ProvidenciaN = 6000.0;
  double get ProvidenciaN => _ProvidenciaN;
  set ProvidenciaN(double value) {
    _ProvidenciaN = value;
  }

  double _SanJoaquinN = 4000.0;
  double get SanJoaquinN => _SanJoaquinN;
  set SanJoaquinN(double value) {
    _SanJoaquinN = value;
  }

  double _SanMiguelN = 4000.0;
  double get SanMiguelN => _SanMiguelN;
  set SanMiguelN(double value) {
    _SanMiguelN = value;
  }

  double _SantiagoN = 6000.0;
  double get SantiagoN => _SantiagoN;
  set SantiagoN(double value) {
    _SantiagoN = value;
  }

  double _VitacuraN = 7000.0;
  double get VitacuraN => _VitacuraN;
  set VitacuraN(double value) {
    _VitacuraN = value;
  }

  double _NunuaN = 5000.0;
  double get NunuaN => _NunuaN;
  set NunuaN(double value) {
    _NunuaN = value;
  }

  String _Providencia = 'Providencia';
  String get Providencia => _Providencia;
  set Providencia(String value) {
    _Providencia = value;
  }

  bool _Aviso = false;
  bool get Aviso => _Aviso;
  set Aviso(bool value) {
    _Aviso = value;
    prefs.setBool('ff_Aviso', value);
  }

  List<String> _ingredientestext = [];
  List<String> get ingredientestext => _ingredientestext;
  set ingredientestext(List<String> value) {
    _ingredientestext = value;
    prefs.setStringList('ff_ingredientestext', value);
  }

  void addToIngredientestext(String value) {
    ingredientestext.add(value);
    prefs.setStringList('ff_ingredientestext', _ingredientestext);
  }

  void removeFromIngredientestext(String value) {
    ingredientestext.remove(value);
    prefs.setStringList('ff_ingredientestext', _ingredientestext);
  }

  void removeAtIndexFromIngredientestext(int index) {
    ingredientestext.removeAt(index);
    prefs.setStringList('ff_ingredientestext', _ingredientestext);
  }

  void updateIngredientestextAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    ingredientestext[index] = updateFn(_ingredientestext[index]);
    prefs.setStringList('ff_ingredientestext', _ingredientestext);
  }

  void insertAtIndexInIngredientestext(int index, String value) {
    ingredientestext.insert(index, value);
    prefs.setStringList('ff_ingredientestext', _ingredientestext);
  }

  List<double> _precioadicionales1 = [];
  List<double> get precioadicionales1 => _precioadicionales1;
  set precioadicionales1(List<double> value) {
    _precioadicionales1 = value;
    prefs.setStringList(
        'ff_precioadicionales1', value.map((x) => x.toString()).toList());
  }

  void addToPrecioadicionales1(double value) {
    precioadicionales1.add(value);
    prefs.setStringList('ff_precioadicionales1',
        _precioadicionales1.map((x) => x.toString()).toList());
  }

  void removeFromPrecioadicionales1(double value) {
    precioadicionales1.remove(value);
    prefs.setStringList('ff_precioadicionales1',
        _precioadicionales1.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromPrecioadicionales1(int index) {
    precioadicionales1.removeAt(index);
    prefs.setStringList('ff_precioadicionales1',
        _precioadicionales1.map((x) => x.toString()).toList());
  }

  void updatePrecioadicionales1AtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    precioadicionales1[index] = updateFn(_precioadicionales1[index]);
    prefs.setStringList('ff_precioadicionales1',
        _precioadicionales1.map((x) => x.toString()).toList());
  }

  void insertAtIndexInPrecioadicionales1(int index, double value) {
    precioadicionales1.insert(index, value);
    prefs.setStringList('ff_precioadicionales1',
        _precioadicionales1.map((x) => x.toString()).toList());
  }

  String _direccion1 = '';
  String get direccion1 => _direccion1;
  set direccion1(String value) {
    _direccion1 = value;
    prefs.setString('ff_direccion1', value);
  }

  double _valordelEnvio = 0.0;
  double get valordelEnvio => _valordelEnvio;
  set valordelEnvio(double value) {
    _valordelEnvio = value;
    prefs.setDouble('ff_valordelEnvio', value);
  }

  List<CarritoStruct> _ListadeCarrito = [];
  List<CarritoStruct> get ListadeCarrito => _ListadeCarrito;
  set ListadeCarrito(List<CarritoStruct> value) {
    _ListadeCarrito = value;
    prefs.setStringList(
        'ff_ListadeCarrito', value.map((x) => x.serialize()).toList());
  }

  void addToListadeCarrito(CarritoStruct value) {
    ListadeCarrito.add(value);
    prefs.setStringList('ff_ListadeCarrito',
        _ListadeCarrito.map((x) => x.serialize()).toList());
  }

  void removeFromListadeCarrito(CarritoStruct value) {
    ListadeCarrito.remove(value);
    prefs.setStringList('ff_ListadeCarrito',
        _ListadeCarrito.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromListadeCarrito(int index) {
    ListadeCarrito.removeAt(index);
    prefs.setStringList('ff_ListadeCarrito',
        _ListadeCarrito.map((x) => x.serialize()).toList());
  }

  void updateListadeCarritoAtIndex(
    int index,
    CarritoStruct Function(CarritoStruct) updateFn,
  ) {
    ListadeCarrito[index] = updateFn(_ListadeCarrito[index]);
    prefs.setStringList('ff_ListadeCarrito',
        _ListadeCarrito.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInListadeCarrito(int index, CarritoStruct value) {
    ListadeCarrito.insert(index, value);
    prefs.setStringList('ff_ListadeCarrito',
        _ListadeCarrito.map((x) => x.serialize()).toList());
  }

  String _id = '';
  String get id => _id;
  set id(String value) {
    _id = value;
    prefs.setString('ff_id', value);
  }

  String _nombrecliente = '';
  String get nombrecliente => _nombrecliente;
  set nombrecliente(String value) {
    _nombrecliente = value;
    prefs.setString('ff_nombrecliente', value);
  }

  String _direccion2 = '';
  String get direccion2 => _direccion2;
  set direccion2(String value) {
    _direccion2 = value;
    prefs.setString('ff_direccion2', value);
  }

  String _telefono = '';
  String get telefono => _telefono;
  set telefono(String value) {
    _telefono = value;
    prefs.setString('ff_telefono', value);
  }

  String _email = '';
  String get email => _email;
  set email(String value) {
    _email = value;
    prefs.setString('ff_email', value);
  }

  String _Fechadeentrega = '';
  String get Fechadeentrega => _Fechadeentrega;
  set Fechadeentrega(String value) {
    _Fechadeentrega = value;
    prefs.setString('ff_Fechadeentrega', value);
  }

  double _preciototal = 0.0;
  double get preciototal => _preciototal;
  set preciototal(double value) {
    _preciototal = value;
    prefs.setDouble('ff_preciototal', value);
  }

  bool _aceptar = true;
  bool get aceptar => _aceptar;
  set aceptar(bool value) {
    _aceptar = value;
    prefs.setBool('ff_aceptar', value);
  }

  bool _transferencia = false;
  bool get transferencia => _transferencia;
  set transferencia(bool value) {
    _transferencia = value;
    prefs.setBool('ff_transferencia', value);
  }

  int _preciototalinteger = 0;
  int get preciototalinteger => _preciototalinteger;
  set preciototalinteger(int value) {
    _preciototalinteger = value;
  }

  String _token = '';
  String get token => _token;
  set token(String value) {
    _token = value;
  }

  String _url = '';
  String get url => _url;
  set url(String value) {
    _url = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}


