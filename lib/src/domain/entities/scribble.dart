import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_draw_board/src/domain/entities/shape.dart';
import 'package:flutter_draw_board/src/domain/mappers/point_offset_converter.dart';

// class PenScribble extends Shape {
//   @override
//   void draw(Canvas canvas) {
//     List<Offset> points = sketch.points.map((e) => e.asOffset).toList();
//     if (points.isEmpty) return;
//
//     if (points.length < 2) {
//       canvas.drawCircle(points.first, 1, paint);
//     }
//
//     Path path = Path();
//     path.moveTo(points.first.dx, points.first.dy);
//     for (int i = 1; i < points.length - 1; i++) {
//       Offset p0 = points[i];
//       Offset p1 = points[i + 1];
//       path.quadraticBezierTo(
//           p0.dx, p0.dy, (p0.dx + p1.dx) / 2, (p0.dy + p1.dy) / 2);
//     }
//     canvas.drawPath(path, paint);
//   }
//
//   @override
//   void insert(Offset point) {
//     // Before
//     print("Before: ${sketch.points}");
//     sketch = sketch.copyWith(points: [...sketch.points, point.asPoint]);
//     //after
//     print("After: ${sketch.points}");
//   }
// }

// class MarkerScribble extends Scribble {
//   @override
//   Paint get paint => super.paint
//     ..strokeWidth = 8.0
//     ..strokeCap = StrokeCap.square;
// }
