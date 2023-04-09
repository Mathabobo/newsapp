import 'package:dio/dio.dart';
//import 'package:flutter/material.dart';
//import 'package:http/http.dart' as http;
import 'package:news/constants/constants.dart';

class NewsService {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: ApiUrls.baseUrl,
      responseType: ResponseType.json,
    ),
  );

  fetchNews() async {
    var response = await _dio.get('&languages=en');
    // &countries=ng
    return response.data;
  }
}




















// class NewsService {
//   final Dio _dio = Dio(
//     BaseOptions(
//       baseUrl: ApiUrls.baseUrl,
//       responseType: ResponseType.json,
//     ),
//   );

//   fetchNews() async {
//     var response = await _dio.get('&locale=us&limit=10');
//     return response.data;
//   }
// }







// class NewsService {
//   final Dio _dio = Dio(
//     BaseOptions(
//       baseUrl: ApiUrls.baseUrl,
//       responseType: ResponseType.json,
//     ),
//   );

//   fetchNews() async {
//     var response = await _dio.get('&language=en');
//     return response.data;
//   }
// }


// fetchNews() async {
//     var response = await http.get(ApiUrls().url);
//     if (response.statusCode == 400) {
//       print('error');
//       return const Text('error');
//     }
//     print('done');
//     return const Text('done');
//   }