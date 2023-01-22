import 'dart:ui';

import 'package:flutter_draw_board/src/data/models/point/point.dart';
import 'package:flutter_draw_board/src/data/models/sketch/sketch.dart';

// abstract class Shape {
//   late Sketch sketch;
//
//   Paint get paint => Paint()
//     ..color = Color(sketch.color)
//     ..style = sketch.filled ? PaintingStyle.fill : PaintingStyle.stroke
//     ..strokeWidth = sketch.strokeWidth
//     ..strokeJoin = sketch.join
//     ..strokeCap = sketch.strokeCap;
//
//   Shape({Sketch? sketch}) {
//     this.sketch =
//         sketch ?? Sketch(points: List.empty(growable: true), name: '');
//   }
//
//   void draw(Canvas canvas);
//
//   void insert(Offset point);
//
//   @override
//   bool operator ==(Object other) =>
//       identical(this, other) ||
//       other is Shape &&
//           runtimeType == other.runtimeType &&
//           sketch == other.sketch;
//
//   @override
//   int get hashCode => sketch.hashCode;
// }
