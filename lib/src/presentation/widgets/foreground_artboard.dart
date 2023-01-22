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
      child: CustomPaint(
        painter: ForegroundPainter(sketch: state.activeSketch),
        child: const SizedBox.expand(),
      ),
    );
  }
}

class ForegroundPainter extends CustomPainter {
  final Sketch? sketch;
  final Map<String, SketchPainter>? painters;

  ForegroundPainter({this.sketch, this.painters});

  @override
  void paint(Canvas canvas, Size size) {
    if (sketch == null) return;
    final Map<String, SketchPainter> sketchPainters =
        SketchFactory.overrideDefaults(painters);
    sketchPainters[sketch!.name]?.call(canvas, sketch!);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
