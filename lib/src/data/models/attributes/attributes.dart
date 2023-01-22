import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter_draw_board/src/domain/mappers/color_value_mapper.dart';
import 'package:flutter_draw_board/src/domain/mappers/string_enum_mappers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'attributes.freezed.dart';

@Freezed(
  fromJson: false,
  toJson: false,
  copyWith: true,
)
class Attributes with _$Attributes {
  const Attributes._();

  const factory Attributes({
    required double strokeWidth,
    required Color color,
    required StrokeJoin strokeJoin,
    required StrokeCap strokeCap,
    required PaintingStyle style,
  }) = _Attributes;

  const factory Attributes.initial({
    @Default(2.0) double strokeWidth,
    @Default(Color(0xFF000000)) Color color,
    @Default(StrokeJoin.round) StrokeJoin strokeJoin,
    @Default(StrokeCap.round) StrokeCap strokeCap,
    @Default(PaintingStyle.stroke) PaintingStyle style,
  }) = DefaultAttribute;

  factory Attributes.fromJson(Map<String, dynamic> json) {
    return Attributes(
      strokeWidth: json["strokeWidth"],
      color: (json["color"] as int).toColor,
      strokeJoin: (json["strokeJoin"] as String).strokeJoin,
      strokeCap: (json["strokeCap"] as String).strokeCap,
      style: (json["style"] as String).style,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "strokeWidth": strokeWidth,
      "strokeJoin": strokeJoin.name,
      "color": color.value,
      "strokeCap": strokeCap.name,
      "style": style.name,
    };
  }

  Paint get paint => Paint()
    ..style = style
    ..color = color
    ..strokeCap = strokeCap
    ..strokeJoin = strokeJoin
    ..strokeWidth = strokeWidth;
}
