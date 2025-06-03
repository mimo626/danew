import 'package:danew/features/news/data/model/news_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/datasources/news_api_service.dart';

final newsListProvider = FutureProvider.family<List<NewsModel>, String>((ref, category) async {
  final api = NewsApiService();
  logger.i(category);
  return await api.fetchNews([category]);
});
