// import 'dart:convert';
// import 'dart:developer';
// import 'package:http/http.dart' as http;
// import 'package:flutter/foundation.dart';
// import 'package:get/get.dart';
//
// import 'api_end_point.dart';
//
// class ApiClient extends GetConnect implements GetxService {
//   Future<Response> getData(String uri, {String? contentType, Map<String, String>? headers}) async {
//     try {
//       if (kDebugMode) {
//         log('GET ====> GetX Request:  => $uri${ApiConstant().apiHeader}\n$query');
//       }
//
//       var response = await http.get(
//         Uri.parse(uri),
//         headers: headers ?? ApiConstant().apiHeader,
//         // contentType: contentType,
//         // query: query,
//       );
//
//       var res = await handleResponse(Response(body: jsonDecode(response.body), statusCode: response.statusCode));
//       if (kDebugMode) {
//         log('GET ====> GetX Response: [ ${res.statusCode} ] => $uri\n\n${res.body}\n');
//       }
//
//       return res;
//     } catch (e) {
//       return Response(statusCode: 1, statusText: e.toString());
//     }
//   }
//
//   Future<Response> postData(String uri, dynamic body,
//       {String? contentType, Map<String, String>? headers}) async {
//     try {
//       if (kDebugMode) {
//         log('POST ====> GetX Request:  => $uri\n${ApiConstant().apiHeader}\n$body\n');
//       }
//
//       // Response response = await post(
//       //   uri,
//       //   body,
//       //   headers: headers ?? ApiConstant().apiHeader,
//       //   contentType: contentType,
//       //   query: query,
//       // );
//       var response = await http.post(
//         Uri.parse(uri),
//         headers: headers ?? ApiConstant().apiHeader,
//         body: body,
//         // contentType: contentType,
//         // query: query,
//       );
//       Response res = await handleResponse(Response(body: jsonDecode(response.body), statusCode: response.statusCode));
//       if (kDebugMode) {
//         log('GET ====> GetX Response: [ ${res.statusCode} ] => $uri\n\n${res.body}\n');
//       }
//
//       return res;
//     } catch (e) {
//       return Response(statusCode: 1, statusText: e.toString());
//     }
//   }
//
//   Future<Response> patchData(String uri, dynamic body,
//       {Map<String, dynamic>? query, String? contentType, Map<String, String>? headers}) async {
//     try {
//       if (kDebugMode) {
//         log('PATCH ====> GetX Request:  => $uri\n $body\n');
//       }
//
//       Response response = await patch(
//         uri,
//         body,
//         headers: headers ?? ApiConstant().apiHeader,
//         contentType: contentType,
//         query: query,
//       );
//
//       response = await handleResponse(response);
//       if (kDebugMode) {
//         log('PATCH ====> GetX Response: [ ${response.statusCode} ] => $uri\n\n${response.body}\n');
//       }
//
//       return response;
//     } catch (e) {
//       return Response(statusCode: 1, statusText: e.toString());
//     }
//   }
//
//   Future<Response> deleteData(String uri,
//       {Map<String, dynamic>? query, String? contentType, Map<String, String>? headers}) async {
//     try {
//       if (kDebugMode) {
//         log('DELETE ====> GetX Request:  => $uri\n');
//       }
//
//       Response response = await delete(
//         uri,
//         headers: headers ?? ApiConstant().apiHeader,
//         contentType: contentType,
//         query: query,
//       );
//
//       response = await handleResponse(response);
//       if (kDebugMode) {
//         log('DELETE ====> GetX Response: [ ${response.statusCode} ] => $uri\n\n${response.body}\n');
//       }
//
//       return response;
//     } catch (e) {
//       return Response(statusCode: 1, statusText: e.toString());
//     }
//   }
//
//   Future<Response> handleResponse(Response response) async {
//     Response _response = response;
//     // if (response.hasError && _response.body == null) {
//     //   ///   API Response NULL
//     //
//     //   print("handle response null->${response.statusCode}  --->>${response.body.toString()}");
//     //   _response = const Response(statusCode: 0, body: {"status": false, "message": 'Connection to API server failed.'});
//     //
//     //   // Get.offAllNamed(AppRoutes.splash);
//     // } else
//     // if (response.statusCode == 500) {
//     //   print('ERRROR ====> ${response.statusCode}');
//     // }
//     if (response.statusCode == 403) {
//       ///    API Unauthorized Token
//
//       print("handle response 401->${response.statusCode}  --->>${response.body.toString()}");
//
//       _response = Response(statusCode: 0, body: _response.body);
//
//       // await clear();
//       // await setString(prefUserToken, "");
//       // Get.offAllNamed(AppRoutes.login);
//     } else {
//       ///  API Response
//
//       _response = Response(statusCode: _response.statusCode, body: _response.body);
//     }
//     return _response;
//   }
// }
