import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:top_20_flutter_tricks/views/screens/interactive_viewr_widget.dart';
import 'animated_controller.dart';

class LiquidSwipeScreen extends StatefulWidget {
  const LiquidSwipeScreen({Key? key}) : super(key: key);

  @override
  State<LiquidSwipeScreen> createState() => _LiquidSwipeScreenState();
}

class _LiquidSwipeScreenState extends State<LiquidSwipeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "LiquidSwipe Package",
          style: TextStyle(fontSize: 20),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => const PageViewScreen(),
              //     ));
            },
            icon: const Icon(Icons.arrow_forward_ios_outlined),
          ),
        ],
      ),
      body: LiquidSwipe(
        pages: const [
          AnimatedControllerScreen(),
          InteractiveViewerScreen(),
          AnimatedControllerScreen(),
          InteractiveViewerScreen(),
          AnimatedControllerScreen(),
          InteractiveViewerScreen(),
          AnimatedControllerScreen(),
          InteractiveViewerScreen(),
        ],
      ),
    );
  }
}
