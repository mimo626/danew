import 'package:danew/features/news/data/model/news_model.dart';

class NewsMapper {
  static NewsModel jsonToModel(Map<String, dynamic> json) {

    return NewsModel(
      article_id: json['article_id'] ?? "",
      title: json['title'] ?? "",
      link: json['link'] ?? "",
      keywords: json['keywords'] ?? [],
      creator:json['creator'] ?? [],
      description: json['description'] ?? "",
      content: json['content'] ?? "",
      pub_date: json['pub_date'] ?? DateTime.now(),
      pub_date_tz: json['pub_date_tz'] ?? "",
      image_url: json['image_url'] ?? "",
      video_url: json['video_url'] ?? "",
      source_id: json['source_id'] ?? "",
      source_name: json['source_name'] ?? "",
      source_priority: json['source_priority'] ?? 0,
      source_url: json['source_url'] ?? "",
      source_icon: json['source_icon'] ?? "",
      language: json['language'] ?? "",
      country: json["country"] ?? [],
      category: json['category'] ?? [],
      sentiment: json['sentiment'] ?? "",
      sentiment_stats: json['sentiment_stats'] ?? "",
      ai_tag: json['ai_tag'] ?? "",
      ai_region: json['ai_region'] ?? "",
      ai_org: json['ai_org'] ?? "",
      duplicate: json['duplicate'] ?? false,
    );
  }
}