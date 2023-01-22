import 'dart:ui';

extension StringEnumX on String {
  StrokeCap get strokeCap {
    for (StrokeCap cap in StrokeCap.values) {
      if (cap.name == this) {
        return cap;
      }
    }
    throw ArgumentError("The stroke cap value ${this} is not supported");
  }

  StrokeJoin get strokeJoin {
    for (StrokeJoin join in StrokeJoin.values) {
      if (join.name == this) {
        return join;
      }
    }
    throw ArgumentError("The stroke join value ${this} is not supported");
  }

  PaintingStyle get style {
    for (PaintingStyle paintingStyle in PaintingStyle.values) {
      if (paintingStyle.name == this) {
        return paintingStyle;
      }
    }
    throw ArgumentError(
        "The stroke paintingStyle value ${this} is not supported");
  }
}
