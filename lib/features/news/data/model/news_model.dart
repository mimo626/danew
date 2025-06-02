import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_model.freezed.dart';
part 'news_model.g.dart';

@freezed
class NewsModel with _$NewsModel{
  const factory NewsModel({
    required String? article_id,
    required String? title,
    required String? link,
    required List<dynamic> keywords,
    required List<dynamic> creator,
    required String? description,
    required String? content,
    required DateTime pub_date,
    required String? pub_date_tz,
    required String? image_url,
    required String? video_url,
    required String? source_id,
    required String? source_name,
    required int source_priority,
    required String? source_url,
    required String? source_icon,
    required String? language,
    required List<dynamic> country,
    required List<dynamic> category,
    required String? sentiment,
    required String? sentiment_stats,
    required String? ai_tag,
    required String? ai_region,
    required String? ai_org,
    required bool duplicate,
  }) = _NewsModel;

  factory NewsModel.fromJson(Map<String, dynamic> json) =>
      _$NewsModelFromJson(json);
}