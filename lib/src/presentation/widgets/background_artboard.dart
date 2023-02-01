part of 'draw_board_widget.dart';

class _BackgroundArtboard extends ConsumerWidget {
  const _BackgroundArtboard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(boardControllerProvider);
    // final controller = ref.read(boardControllerProvider.notifier);

    return CustomPaint(
      painter: ArtBoardPainter(state),
      // size: controller.board.size,
    );
  }
}

class ArtBoardPainter extends CustomPainter {
  final DrawBoardState state;

  ArtBoardPainter(this.state);

  @override
  void paint(Canvas canvas, Size size) {
    Offset translation = state.translation;
    double scale = state.scale;
    // print("Canvas:");
    // print("Translation: $translation");
    // print("Scale: $scale");
    // canvas.clipRect(rect)
    canvas.save();

    canvas.translate(translation.dx, translation.dy);
    canvas.scale(scale);
    // canvas.drawRect(Offset.zero & size, Paint()..color = Colors.blue);
    // canvas.clipRect(Offset.zero & size);
    // Rect rect = Rect.fromLTRB(0, 0, size.width, size.height);
    // canvas.clipRect(rect);
    Paint paint = Paint()..color = Colors.white;
    canvas.drawPaint(paint);
    final sketches = state.board.sketches;
    final Map<String, SketchPainter> sketchPainters =
        SketchFactory.overrideDefaults(state.painters);

    for (Sketch sketch in sketches) {
      sketchPainters[sketch.name]?.call(canvas, sketch);
    }
    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
