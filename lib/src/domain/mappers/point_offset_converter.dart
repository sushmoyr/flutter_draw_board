import 'dart:ui';

import 'package:flutter_draw_board/src/data/models/point/point.dart';

extension PointToOffset on Point {
  Offset get asOffset => Offset(x, y);
}

extension OffsetToPoint on Offset {
  Point get asPoint => Point(x: dx, y: dy);
}
