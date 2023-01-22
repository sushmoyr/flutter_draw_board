part of 'draw_board_widget.dart';

class _BackgroundArtboard extends ConsumerWidget {
  const _BackgroundArtboard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(boardControllerProvider);
    final controller = ref.read(boardControllerProvider.notifier);

    return CustomPaint(
      painter: ArtBoardPainter(state),
      child: const SizedBox.expand(),
    );
  }
}

class ArtBoardPainter extends CustomPainter {
  final DrawBoardState state;

  ArtBoardPainter(this.state);

  @override
  void paint(Canvas canvas, Size size) {
    final sketches = state.board.sketches;
    final Map<String, SketchPainter> sketchPainters =
        SketchFactory.overrideDefaults(state.painters);

    for (Sketch sketch in sketches) {
      sketchPainters[sketch.name]?.call(canvas, sketch);
      // Paint paint = Paint()
      //   ..strokeCap = sketch.strokeCap
      //   ..color = sketch.color.toColor
      //   ..style = sketch.filled ? PaintingStyle.fill : PaintingStyle.stroke
      //   ..strokeWidth = sketch.strokeWidth;
      //
      // List<Offset> points = sketch.points.map((e) => e.asOffset).toList();
      // if (points.isEmpty) return;
      //
      // if (points.length < 2) {
      //   canvas.drawCircle(points.first, 1, paint);
      // }
      //
      // Path path = Path();
      // path.moveTo(points.first.dx, points.first.dy);
      // for (int i = 1; i < points.length - 1; i++) {
      //   Offset p0 = points[i];
      //   Offset p1 = points[i + 1];
      //   path.quadraticBezierTo(
      //       p0.dx, p0.dy, (p0.dx + p1.dx) / 2, (p0.dy + p1.dy) / 2);
      // }
      // canvas.drawPath(path, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
