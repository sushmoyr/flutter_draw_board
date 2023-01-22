import 'package:flutter/material.dart';
import 'package:flutter_draw_board/flutter_draw_board.dart';
import 'package:flutter_draw_board/src/data/models/attributes/attributes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final boardControllerProvider =
    StateNotifierProvider<BoardController, DrawBoardState>((ref) {
  throw UnimplementedError("No valid controller was found.");
});

class BoardController extends StateNotifier<DrawBoardState> {
  BoardController({
    double initialScale = 1.0,
    double? boardWidth,
    double? boardHeight,
  }) : super(
          DrawBoardState.drawing(
            board: Board.create(
              width: boardWidth ?? 200.0,
              height: boardHeight ?? 200.0,
            ),
            scale: initialScale,
          ),
        );

  BoardController.fromDocument({
    required Board document,
    double initialScale = 1.0,
  }) : super(DrawBoardState.drawing(board: document));

  /// Used when the user touches the screen or clicks the mouse
  void onPointerDown(PointerDownEvent event) {
    /// If current state is set to drawing, set active sketch to a new empty
    /// sketch
    state = state.map(
      drawing: (drawing) {
        Sketch sketch = _createNewSketch(drawing);
        return drawing.copyWith(activeSketch: sketch);
      },
      moving: (moving) => moving,
    );
  }

  /// Used when the user moves the finger across the screen or moves the mouse
  /// pointer
  void onPointerUpdate(PointerMoveEvent event) {
    // print(state.runtimeType);
    // if (state is Drawing && state.activeShape != null) {
    //   Shape currentShape = state.activeShape!;
    // print(event.localPosition);
    // state = state.copyWith(
    //   activeShape: currentShape..insert(event.localPosition),
    // );
    // }
    if (state is Drawing && state.activeSketch != null) {
      Point point = event.localPosition.asPoint;
      state = state.copyWith.activeSketch!(
        points: [...state.activeSketch!.points, point],
      );
    }
  }

  /// Used when the user removes finger from screen or
  void onPointerUp(PointerUpEvent event) {
    state = state.map(
      drawing: (d) {
        Board activeBoard = state.board;
        activeBoard = activeBoard.copyWith(
          sketches: [...activeBoard.sketches, state.activeSketch!],
        );
        return state.copyWith(board: activeBoard, activeSketch: null);
      },
      moving: (m) => m,
    );
  }

  /// Selects the sketch from toolbar
  void selectSketch(String name) {
    state = Drawing(
      board: state.board,
      translation: state.translation,
      scale: state.scale,
      activeSketch: state.activeSketch,
      selectedSketch: name,
      painters: state.painters,
      selectedAttributes: state.selectedAttributes,
    );
  }

  // void onPointerCancel(PointerCancelEvent event);

  // void onPointerExit(PointerExitEvent event);

  /// Selects the `move` state so that user can move/zoom the board
  void selectMoveMode() {
    state = Moving(
      board: state.board,
      translation: state.translation,
      scale: state.scale,
      activeSketch: state.activeSketch,
      painters: state.painters,
      selectedAttributes: state.selectedAttributes,
    );
  }

  /// Change stroke size
  void setAttribute({
    double? strokeWidth,
    StrokeCap? strokeCap,
    StrokeJoin? strokeJoin,
    PaintingStyle? style,
    Color? color,
  }) {
    state = state.map(
      drawing: (drawing) {
        Attributes currentAttrs = drawing.selectedAttributes;
        currentAttrs = currentAttrs.copyWith(
          style: style ?? currentAttrs.style,
          color: color ?? currentAttrs.color,
          strokeJoin: strokeJoin ?? currentAttrs.strokeJoin,
          strokeWidth: strokeWidth ?? currentAttrs.strokeWidth,
          strokeCap: strokeCap ?? currentAttrs.strokeCap,
        );
        return drawing.copyWith(selectedAttributes: currentAttrs);
      },
      moving: (moving) => moving,
    );
  }

  /// Gets the board data object
  Board get data => state.board;

  /// Gets the json data
  Map<String, dynamic> get json => data.toJson();

  Sketch _createNewSketch(Drawing state) {
    return Sketch(
      name: state.selectedSketch,
      points: [],
      attributes: state.selectedAttributes,
    );
  }
}
