// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'board.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Board _$$_BoardFromJson(Map<String, dynamic> json) => _$_Board(
      width: (json['width'] as num).toDouble(),
      height: (json['height'] as num).toDouble(),
      sketches: (json['sketches'] as List<dynamic>?)
              ?.map((e) => Sketch.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_BoardToJson(_$_Board instance) => <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'sketches': instance.sketches,
      'runtimeType': instance.$type,
    };

_$_InitialBoard _$$_InitialBoardFromJson(Map<String, dynamic> json) =>
    _$_InitialBoard(
      width: (json['width'] as num?)?.toDouble() ?? 8.5,
      height: (json['height'] as num?)?.toDouble() ?? 11,
      sketches: (json['sketches'] as List<dynamic>?)
              ?.map((e) => Sketch.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_InitialBoardToJson(_$_InitialBoard instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'sketches': instance.sketches,
      'runtimeType': instance.$type,
    };
