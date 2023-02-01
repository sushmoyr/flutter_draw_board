// import 'dart:ui';
//
// import 'package:flutter/foundation.dart';
// import 'package:flutter_draw_board/flutter_draw_board.dart';
// import 'package:flutter_draw_board/src/data/data.dart';
//
// class SketchFactory {
//   late final Set<SketchPainter> _painters;
//
//   SketchFactory(List<SketchPainter> painters) {
//     Set<SketchPainter> p = {};
//     for (int i=0; i<painters.length; i++) {
//       if (p.any((element) => element.name == painters[i].name)) continue;
//       p.add(painters[i]);
//     }
//     _painters = p;
//   }
//
//   SketchPainter? find(String name) {
//     try {
//       return _painters.singleWhere((element) => element.name == name);
//     } on Exception catch (e) {
//       return null;
//     }
//   }
// }
//
// abstract class SketchPainter {
//   final String name;
//
//   @mustCallSuper
//   SketchPainter({required this.name});
//
//   void paint(Canvas canvas, Sketch sketch) {
//     Paint paint = sketch.attributes.paint;
//
//     List<Offset> points = sketch.points.map<Offset>((e) => e.asOffset).toList();
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
//   Sketch build(Sketch activeSketch, Point point) {
//     return activeSketch.copyWith(
//       points: [...activeSketch.points, point],
//     );
//   }
// }
//
// class ScribblePainter extends SketchPainter {
//   ScribblePainter() : super(name: "rectangle");
// }
