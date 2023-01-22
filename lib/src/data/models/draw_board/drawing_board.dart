import 'package:flutter_draw_board/src/domain/entities/shape.dart';

// typedef SketchToShapeConverter = Shape Function(Sketch sketch);
// typedef ShapeToSketchConverter = Sketch Function(Shape shape);

// class DrawingBoard {
//   final double width;
//   final double height;
//   final List<Shape> shapes;
//   // ShapeToSketchConverter? shapeToSketchConverter;
//   // final SketchToShapeConverter? sketchToShapeConverter;
//
//   const DrawingBoard({
//     required this.width,
//     required this.height,
//     required this.shapes,
//     // this.sketchToShapeConverter,
//   });
//
//   const DrawingBoard.empty({
//     this.width = 200,
//     this.height = 200,
//     // this.sketchToShapeConverter,
//   }) : shapes = const [];
//
//   @override
//   bool operator ==(Object other) =>
//       identical(this, other) ||
//       other is DrawingBoard &&
//           runtimeType == other.runtimeType &&
//           width == other.width &&
//           height == other.height &&
//           shapes == other.shapes;
//
//   @override
//   int get hashCode => width.hashCode ^ height.hashCode ^ shapes.hashCode;
//
//   // factory DrawingBoard.fromDocument(
//   //         {required Document document,
//   //         required SketchToShapeConverter converter}) =>
//   //     DrawingBoard(
//   //       width: document.width,
//   //       height: document.height,
//   //       shapes: document.sketches.map((e) => converter(e)).toList(),
//   //     );
//
//   // DrawingBoard withConverter({SketchToShapeConverter? sketchToShapeConverter}) {
//   //   // this.shapeToSketchConverter = shapeToSketchConverter;
//   //   return copyWith(sketchToShapeConverter: sketchToShapeConverter);
//   // }
//
//   // Document toDocument() {
//   //   return Document(
//   //       width: width,
//   //       height: height,
//   //       sketches: shapes.map((e) => e.sketch).toList());
//   // }
//
// //<editor-fold desc="Data Methods">
//
//   @override
//   String toString() {
//     return 'DrawingBoard{ width: $width, height: $height, shapes: $shapes}';
//   }
//
//   DrawingBoard copyWith({
//     double? width,
//     double? height,
//     List<Shape>? shapes,
//     // SketchToShapeConverter? sketchToShapeConverter,
//   }) {
//     return DrawingBoard(
//       width: width ?? this.width,
//       height: height ?? this.height,
//       shapes: shapes ?? this.shapes,
//       // sketchToShapeConverter:
//       //     sketchToShapeConverter ?? this.sketchToShapeConverter,
//     );
//   }
//
// //</editor-fold>
// }
