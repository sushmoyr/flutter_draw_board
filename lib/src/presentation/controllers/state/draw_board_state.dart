import 'dart:ui';

import 'package:flutter_draw_board/src/data/data.dart';
import 'package:flutter_draw_board/src/data/models/attributes/attributes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'draw_board_state.freezed.dart';

typedef SketchPainter = void Function(Canvas canvas, Sketch sketch);

/// The state of the draw board
/// Built in states are
///
/// - Drawing: Drawing shapes, lines, eraser etc
/// - Moving: Move, scale the draw board
/// - Typing (Not implemented yet)
@freezed
class DrawBoardState with _$DrawBoardState {
  const factory DrawBoardState.drawing({
    required Board board,
    @Default(Offset.zero) Offset translation,
    @Default(1.0) double scale,
    Sketch? activeSketch,
    @Default('scribble') String selectedSketch,
    @Default(Attributes.initial()) Attributes selectedAttributes,
    Map<String, SketchPainter>? painters,
  }) = Drawing;

  const factory DrawBoardState.moving({
    required Board board,
    @Default(Offset.zero) Offset translation,
    @Default(1.0) double scale,
    Sketch? activeSketch,
    @Default(Attributes.initial()) Attributes selectedAttributes,
    Map<String, SketchPainter>? painters,
  }) = Moving;
}
