// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Post _$$_PostFromJson(Map<String, dynamic> json) => _$_Post(
      title: json['title'] as String,
      text: json['text'] as String,
      description: json['description'] == null
          ? const None()
          : Option<String>.fromJson(json['description']),
      avatar: json['avatar'] == null
          ? const None()
          : const OptionEntryFieldImageConverter()
              .fromJson(json['avatar'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$$_PostToJson(_$_Post instance) => <String, dynamic>{
      'title': instance.title,
      'text': instance.text,
      'description': instance.description.toJson(
        (value) => value,
      ),
      'avatar': const OptionEntryFieldImageConverter().toJson(instance.avatar),
    };
