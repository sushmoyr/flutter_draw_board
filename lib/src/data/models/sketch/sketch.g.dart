// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sketch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Sketch _$$_SketchFromJson(Map<String, dynamic> json) => _$_Sketch(
      name: json['name'] as String,
      points: (json['points'] as List<dynamic>)
          .map((e) => Point.fromJson(e as Map<String, dynamic>))
          .toList(),
      attributes: json['attributes'] == null
          ? const Attributes.initial()
          : Attributes.fromJson(json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SketchToJson(_$_Sketch instance) => <String, dynamic>{
      'name': instance.name,
      'points': instance.points,
      'attributes': instance.attributes,
    };
