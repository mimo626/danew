import 'dart:convert';

import 'package:danew/features/news/data/model/news_mapper.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

import '../model/news_model.dart';


final logger = Logger();

class NewsApiService {
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: "https://newsdata.io/api/1/latest", // API 서버 주소
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      headers: {
        'Content-Type': 'application/json',
      },
    ),
  )..interceptors.add(
    LogInterceptor(
      request: true,
      requestHeader: true,
      requestBody: true,
      responseHeader: true,
      responseBody: true, // 응답 본문까지 출력
      error: true,
    ),
  );

  /// 뉴스 목록 조회
  Future<List<NewsModel>> fetchNews(String query, List<String> category) async {
    try {
      final response = await dio.get('', queryParameters:
      {
        "country" : "kr"
        ,"category" : "business"
        ,"apikey" : "pub_83780fb69a56440dbbeb6c4373fcb5ebb1535"
        ,"q" : "정치"
      }
      );

      if (response.statusCode == 200) {
        dynamic data = response.data;

        List<Map<String, dynamic>> results = List<Map<String, dynamic>>.from(data["results"]);
        logger.i(data);
        List<NewsModel> newsList = results.map((json) => NewsMapper.jsonToModel(json)).toList();
        logger.i("뉴스 조회 성공 ${newsList}");
        return newsList;
      } else {
        throw Exception('뉴스 데이터를 가져오지 못했습니다.');
      }
    } catch (e) {
      logger.e("뉴스 조회 실패: $e");
      throw Exception("뉴스 조회 중 오류 발생: $e");
    }
  }
}
