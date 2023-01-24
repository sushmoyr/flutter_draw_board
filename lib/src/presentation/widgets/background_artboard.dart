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
    Offset translation = state.translation;
    double scale = state.scale;
    print("Canvas:");
    print("Translation: $translation");
    print("Scale: $scale");
    canvas.save();
    canvas.translate(translation.dx, translation.dy);
    canvas.scale(scale);
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
