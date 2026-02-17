const axios = require("axios").default;
const qs = require("qs");

async function _emailSendCall(context, ffVariables) {
  var de = ffVariables["de"];
  var para = ffVariables["para"];
  var asunto = ffVariables["asunto"];
  var mensaje = ffVariables["mensaje"];

  var url = `https://api.envialosimple.email/api/v1/mail/send`;
  var headers = {
    Authorization: `Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpYXQiOjE3Njg4NjA4NzksImV4cCI6NDkyNDUzNDQ3OSwicm9sZXMiOlsiUk9MRV9BRE1JTiIsIlJPTEVfVVNFUiJdLCJraWQiOiI2OTZlYWNjZjE0NmFmOWE0NjYwNDhmZGIiLCJhaWQiOiI2OTY5YzE0OWE2YjUxYWM2NDEwNDI2ZGQiLCJ1c2VybmFtZSI6ImJveGRlc2F5dW5vc3BhY2thZ2VkZXNheXVub3NAZ21haWwuY29tIn0.o2WpdpOjQqRv91CQljYFwN5TbDx0MA33_KVhSnRfaJrCcNHquiGrmbcw7T2BvICXIC-6HMSRlkS7qr464ISLV4sJF4UynYKk521-bT3RO-myL1my6LX7Os7r1llmItc-KcRhWW0Ukh5a1I9Dr7fDwryMAJsT3TaZ_G_fO0eh5Sw4BtxqdwJEekPghpXgyg9_ddIspuzQoblYzm_siWt1nJdk4mcRPWvwbhfGfK8eenXym7PdirWeRMkDjflPNVuUeFwTHTpZbFmXUs9eAB9veYuYdAyqy3DZ5nwS2NMgRaSEhn5A4eqvtRtn7MYv4YxRDE5nfz0zKk3APNum5ljL7A`,
    "Content-Type": `application/json`,
    Accept: `application/json`,
  };
  var params = {};
  var ffApiRequestBody = `
{
  "from": "${escapeStringForJson(de)}",
  "to": "${escapeStringForJson(para)}",
  "subject": "${escapeStringForJson(asunto)}",
  "html": "${escapeStringForJson(mensaje)}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

/// Helper functions to route to the appropriate API Call.

async function makeApiCall(context, data) {
  var callName = data["callName"] || "";
  var variables = data["variables"] || {};

  const callMap = {
    EmailSendCall: _emailSendCall,
  };

  if (!(callName in callMap)) {
    return {
      statusCode: 400,
      error: `API Call "${callName}" not defined as private API.`,
    };
  }

  var apiCall = callMap[callName];
  var response = await apiCall(context, variables);
  return response;
}

async function makeApiRequest({
  method,
  url,
  headers,
  params,
  body,
  returnBody,
  isStreamingApi,
}) {
  return axios
    .request({
      method: method,
      url: url,
      headers: headers,
      params: params,
      responseType: isStreamingApi ? "stream" : "json",
      ...(body && { data: body }),
    })
    .then((response) => {
      return {
        statusCode: response.status,
        headers: response.headers,
        ...(returnBody && { body: response.data }),
        isStreamingApi: isStreamingApi,
      };
    })
    .catch(function (error) {
      return {
        statusCode: error.response.status,
        headers: error.response.headers,
        ...(returnBody && { body: error.response.data }),
        error: error.message,
      };
    });
}

const _unauthenticatedResponse = {
  statusCode: 401,
  headers: {},
  error: "API call requires authentication",
};

function createBody({ headers, params, body, bodyType }) {
  switch (bodyType) {
    case "JSON":
      headers["Content-Type"] = "application/json";
      return body;
    case "TEXT":
      headers["Content-Type"] = "text/plain";
      return body;
    case "X_WWW_FORM_URL_ENCODED":
      headers["Content-Type"] = "application/x-www-form-urlencoded";
      return qs.stringify(params);
  }
}
function escapeStringForJson(val) {
  if (typeof val !== "string") {
    return val;
  }
  return val
    .replace(/[\\]/g, "\\\\")
    .replace(/["]/g, '\\"')
    .replace(/[\n]/g, "\\n")
    .replace(/[\t]/g, "\\t");
}

module.exports = { makeApiCall };
