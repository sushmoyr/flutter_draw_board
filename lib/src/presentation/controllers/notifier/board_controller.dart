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
    if (state is Drawing && state.activeSketch != null) {
      Offset position = (event.localPosition - state.translation) / state.scale;
      Point point = position.asPoint;
      state = state.copyWith.activeSketch!(
        points: [...state.activeSketch!.points, point],
      );
    }

    /// TODO: Add custom method to draw a shape.
    /// The current idea is to add an abstract class with paint method and build
    /// method signature. Paint method will add the painting process. And build
    /// method will add the building process. May be we can use the SketchFactory
    /// class for this.
    /// In the build method, we will pass the active sketch and the current point
    /// and we will receive a new Sketch which will replace the active sketch.
    /// Doing this, we can customize the build logic like painting logic for each
    /// sketches.

    // Handle move event
    if (state is Moving) {
      Offset delta = event.delta;
      Offset translation = state.translation + delta;
      state = state.copyWith(
        translation: translation,
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

  void onScaleStart(ScaleStartDetails details) {
    print("Scale start: $details");
    if (state is! Moving || details.pointerCount < 2) return;
    state = (state as Moving).copyWith(focalPoint: details.localFocalPoint);
  }

  void onScaleUpdate(ScaleUpdateDetails details) {
    if (details.pointerCount < 2) return;
    state = state.maybeMap(
      moving: (s) {
        double threshold = 0.005;
        double scale = s.scale;
        double initialScale = scale;
        Offset offset = s.translation;
        Offset focalPoint = s.focalPoint;
        // scale = (scale * details.scale).clamp(0.5, 1.5);
        double newScale = (scale * details.scale).clamp(0.5, 1.5);

        double scaleDelta = newScale - scale;

        if (scaleDelta > threshold) {
          newScale = (scale + threshold).clamp(0.5, 1.5);
        }
        if (scaleDelta < threshold) {
          newScale = (scale - threshold).clamp(0.5, 1.5);
        }

        // if (scaleDelta.abs() < threshold) {
        //   newScale = (scale + scaleDelta).clamp(0.5, 1.5);
        // } else {
        //   newScale = (scale + threshold).clamp(0.5, 1.5);
        // }

        // if (newScale - scale > threshold) newScale = scale + threshold;
        // if (scale - newScale > threshold) newScale = scale - threshold;
        scale = newScale;

        // Calculate the focal point offset
        // if (scale != initialScale) {
        //   offset += (focalPoint - details.localFocalPoint) * (1 - 1 / scale);
        // }

        // Calculate the new offset based on the focal point
        // offset = details.focalPoint - (focalPointOffset / scale);
        print('Offset: $offset ScaleDelta: $scaleDelta NewScale: $newScale');
        return s.copyWith(
          scale: scale,
          // translation: offset,
        );
      },
      orElse: () => state,
    );
  }

  void onScaleEnd(ScaleEndDetails details) {
    if (state is Moving) {
      state = (state as Moving).copyWith(focalPoint: Offset.zero);
    }
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
    print('State is moving');
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
