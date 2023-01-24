import 'dart:ui';

Size convertPaperSizeToScreenSize({
  required double width,
  required double height,
  required double devicePixelRatio,
}) {
  // print(devicePixelRatio);
  return Size(width * devicePixelRatio, height * devicePixelRatio);
}
