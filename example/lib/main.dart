import 'package:flutter/material.dart';
import 'package:flutter_draw_board/flutter_draw_board.dart';
import 'package:flutter_material_color_picker/flutter_material_color_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Art Board'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final BoardController controller = BoardController();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: DrawBoardWidget(
        controller: controller,
      ),
      bottomNavigationBar: DrawingToolbar(
        controller: controller,
      ),
    );
  }
}

class DrawingToolbar extends StatelessWidget {
  const DrawingToolbar({Key? key, required this.controller}) : super(key: key);

  final BoardController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kToolbarHeight,
      child: LayoutBuilder(builder: (context, constraints) {
        double maxWidth = constraints.maxWidth;
        double maxButton = 5.0;
        double tabWidth = maxWidth / maxButton;
        return Row(
          children: [
            SizedBox(
              width: tabWidth,
              child: Center(
                child: IconButton(
                  onPressed: () {
                    controller.selectSketch('scribble');
                  },
                  icon: const Icon(Icons.draw_outlined),
                ),
              ),
            ),
            SizedBox(
              width: tabWidth,
              child: Center(
                child: IconButton(
                  onPressed: () {
                    controller.selectSketch('rectangle');
                  },
                  icon: const Icon(Icons.rectangle_outlined),
                ),
              ),
            ),
            SizedBox(
              width: tabWidth,
              child: Center(
                child: IconButton(
                  onPressed: () {
                    controller.selectSketch('eraser');
                  },
                  icon: const Icon(Icons.remove_circle_outline),
                ),
              ),
            ),
            SizedBox(
              width: tabWidth,
              child: Center(
                child: IconButton(
                  onPressed: () {
                    controller.selectMoveMode();
                  },
                  icon: const Icon(Icons.pan_tool),
                ),
              ),
            ),
            SizedBox(
              width: tabWidth,
              child: Center(
                child: IconButton(
                  onPressed: () async {
                    final color = await showDialog<Color>(
                      context: context,
                      builder: (dContext) => Dialog(
                        child: MaterialColorPicker(
                          onColorChange: (color) =>
                              Navigator.pop(dContext, color),
                        ),
                      ),
                    );
                    controller.setAttribute(color: color);
                  },
                  icon: const Icon(Icons.draw_outlined),
                ),
              ),
            )
          ],
        );
      }),
    );
  }
}
