part of 'draw_board_widget.dart';

class _ForegroundArtboard extends ConsumerWidget {
  const _ForegroundArtboard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(boardControllerProvider);
    final controller = ref.read(boardControllerProvider.notifier);

    return Listener(
      onPointerDown: controller.onPointerDown,
      onPointerUp: controller.onPointerUp,
      onPointerMove: controller.onPointerUpdate,
      child: GestureDetector(
        onScaleStart: controller.onScaleStart,
        onScaleUpdate: controller.onScaleUpdate,
        onScaleEnd: controller.onScaleEnd,
        child: CustomPaint(
          painter: ForegroundPainter(
            sketch: state.activeSketch,
            scale: state.scale,
            translation: state.translation,
            // painters: state.painters,
          ),
          child: const SizedBox.expand(),
        ),
      ),
    );
  }
}

class ForegroundPainter extends CustomPainter {
  final Sketch? sketch;
  final Map<String, SketchPainter>? painters;
  final double scale;
  final Offset translation;

  ForegroundPainter({
    this.sketch,
    this.painters,
    this.scale = 1.0,
    this.translation = Offset.zero,
  });

  @override
  void paint(Canvas canvas, Size size) {
    print("Canvas:");
    print("Translation: $translation");
    print("Scale: $scale");
    canvas.save();
    canvas.translate(translation.dx, translation.dy);
    canvas.scale(scale);
    if (sketch != null) {
      final Map<String, SketchPainter> sketchPainters =
          SketchFactory.overrideDefaults(painters);
      sketchPainters[sketch!.name]?.call(canvas, sketch!);
    }
    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
