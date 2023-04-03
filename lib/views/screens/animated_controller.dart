import 'package:flutter/material.dart';
import 'package:top_20_flutter_tricks/views/screens/interactive_viewr_widget.dart';

class AnimatedControllerScreen extends StatefulWidget {
  const AnimatedControllerScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedControllerScreen> createState() =>
      _AnimatedControllerScreenState();
}

class _AnimatedControllerScreenState extends State<AnimatedControllerScreen> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    double height = isPressed ? 150 : 500;
    double width = isPressed ? 100 : 300;
    Color containerColor = isPressed ? Colors.redAccent : Colors.orangeAccent;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "AnimatedController Widget",
          style: TextStyle(fontSize: 20),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const InteractiveViewerScreen(),
                  ));
            },
            icon: const Icon(Icons.arrow_forward_ios_outlined),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: InkWell(
            onTap: () {
              setState(() {
                isPressed = !isPressed;
              });
            },
            child: AnimatedContainer(
              duration: const Duration(seconds: 1),
              height: height,
              width: width,
              color: containerColor,
            ),
          ),
        ),
      ),
    );
  }
}
