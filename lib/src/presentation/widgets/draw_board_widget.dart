import 'package:flutter/material.dart';
import 'package:flutter_draw_board/flutter_draw_board.dart';
import 'package:flutter_draw_board/src/utils/default_painter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'background_artboard.dart';

part 'foreground_artboard.dart';

class DrawBoardWidget extends StatelessWidget {
  const DrawBoardWidget({
    super.key,
    required this.controller,
  });

  final BoardController controller;

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        boardControllerProvider.overrideWith((ref) => controller),
      ],
      child: const _DrawBoardWidget(),
    );
  }
}

class _DrawBoardWidget extends ConsumerStatefulWidget {
  const _DrawBoardWidget({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => __DrawBoardWidgetState();
}

class __DrawBoardWidgetState extends ConsumerState<_DrawBoardWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox.expand(
        child: Stack(
          children: const [
            _BackgroundArtboard(),
            _ForegroundArtboard(),
          ],
        ),
      ),
    );
  }
}
