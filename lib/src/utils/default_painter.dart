import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_draw_board/flutter_draw_board.dart';

class SketchFactory {
  static SketchPainter scribblePainter = (Canvas canvas, Sketch sketch) {
    Paint paint = sketch.attributes.paint;

    List<Offset> points = sketch.points.map((e) => e.asOffset).toList();
    if (points.isEmpty) return;

    if (points.length < 2) {
      canvas.drawCircle(points.first, 1, paint);
    }

    Path path = Path();
    path.moveTo(points.first.dx, points.first.dy);
    for (int i = 1; i < points.length - 1; i++) {
      Offset p0 = points[i];
      Offset p1 = points[i + 1];
      path.quadraticBezierTo(
          p0.dx, p0.dy, (p0.dx + p1.dx) / 2, (p0.dy + p1.dy) / 2);
    }
    canvas.drawPath(path, paint);
  };

  static SketchPainter rectPainter = (Canvas canvas, Sketch sketch) {
    Rect rect = Rect.fromPoints(
      sketch.points.first.asOffset,
      sketch.points.last.asOffset,
    );
    Paint paint = sketch.attributes.paint;
    print("Rect: $rect");
    canvas.drawRect(rect, paint);
  };

  static SketchPainter eraserPainter = (Canvas canvas, Sketch sketch) {
    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 20;

    print("Erasing");

    List<Offset> points = sketch.points.map((e) => e.asOffset).toList();
    if (points.isEmpty) return;

    if (points.length < 2) {
      canvas.drawCircle(points.first, 1, paint);
    }

    Path path = Path();
    path.moveTo(points.first.dx, points.first.dy);
    for (int i = 1; i < points.length - 1; i++) {
      Offset p0 = points[i];
      Offset p1 = points[i + 1];
      path.quadraticBezierTo(
          p0.dx, p0.dy, (p0.dx + p1.dx) / 2, (p0.dy + p1.dy) / 2);
    }
    canvas.drawPath(path, paint);
  };

  static Map<String, SketchPainter> defaultPainters = {
    "scribble": scribblePainter,
    "rectangle": rectPainter,
    "eraser": eraserPainter,
  };

  static Map<String, SketchPainter> overrideDefaults(
      Map<String, SketchPainter>? overrides) {
    if (overrides != null) {
      return Map.from(defaultPainters)..addEntries(overrides.entries);
    }
    return defaultPainters;
  }
}
