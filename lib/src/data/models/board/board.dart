import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../sketch/sketch.dart';

part 'board.freezed.dart';
part 'board.g.dart';

@freezed
class Board with _$Board {
  const Board._();
  const factory Board({
    required double width,
    required double height,
    @Default([]) List<Sketch> sketches,
  }) = _Board;

  const factory Board.create({
    @Default(8.5) double width,
    @Default(11) double height,
    @Default([]) List<Sketch> sketches,
  }) = _InitialBoard;

  factory Board.fromJson(Map<String, dynamic> json) => _$BoardFromJson(json);

  // Size get size => Size(width, height);
  double get ratio => width / height;
}
