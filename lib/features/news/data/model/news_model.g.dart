// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewsModelImpl _$$NewsModelImplFromJson(Map<String, dynamic> json) =>
    _$NewsModelImpl(
      article_id: json['article_id'] as String?,
      title: json['title'] as String?,
      link: json['link'] as String?,
      keywords: json['keywords'] as List<dynamic>,
      creator: json['creator'] as List<dynamic>,
      description: json['description'] as String?,
      content: json['content'] as String?,
      pub_date: DateTime.parse(json['pub_date'] as String),
      pub_date_tz: json['pub_date_tz'] as String?,
      image_url: json['image_url'] as String?,
      video_url: json['video_url'] as String?,
      source_id: json['source_id'] as String?,
      source_name: json['source_name'] as String?,
      source_priority: (json['source_priority'] as num).toInt(),
      source_url: json['source_url'] as String?,
      source_icon: json['source_icon'] as String?,
      language: json['language'] as String?,
      country: json['country'] as List<dynamic>,
      category: json['category'] as List<dynamic>,
      sentiment: json['sentiment'] as String?,
      sentiment_stats: json['sentiment_stats'] as String?,
      ai_tag: json['ai_tag'] as String?,
      ai_region: json['ai_region'] as String?,
      ai_org: json['ai_org'] as String?,
      duplicate: json['duplicate'] as bool,
    );

Map<String, dynamic> _$$NewsModelImplToJson(_$NewsModelImpl instance) =>
    <String, dynamic>{
      'article_id': instance.article_id,
      'title': instance.title,
      'link': instance.link,
      'keywords': instance.keywords,
      'creator': instance.creator,
      'description': instance.description,
      'content': instance.content,
      'pub_date': instance.pub_date.toIso8601String(),
      'pub_date_tz': instance.pub_date_tz,
      'image_url': instance.image_url,
      'video_url': instance.video_url,
      'source_id': instance.source_id,
      'source_name': instance.source_name,
      'source_priority': instance.source_priority,
      'source_url': instance.source_url,
      'source_icon': instance.source_icon,
      'language': instance.language,
      'country': instance.country,
      'category': instance.category,
      'sentiment': instance.sentiment,
      'sentiment_stats': instance.sentiment_stats,
      'ai_tag': instance.ai_tag,
      'ai_region': instance.ai_region,
      'ai_org': instance.ai_org,
      'duplicate': instance.duplicate,
    };
