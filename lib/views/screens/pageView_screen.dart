import 'package:flutter/material.dart';
import 'package:top_20_flutter_tricks/views/screens/animated_controller.dart';
import 'package:top_20_flutter_tricks/views/screens/liquid_swipe_package_screen.dart';

class PageViewScreen extends StatelessWidget {
  const PageViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "PageView Widget",
          style: TextStyle(fontSize: 20),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LiquidSwipeScreen(),
                  ));
            },
            icon: const Icon(Icons.arrow_forward_ios_outlined),
          ),
        ],
      ),

      body: PageView(scrollDirection: Axis.horizontal,children: const [
        AnimatedControllerScreen(),
        AnimatedControllerScreen(),
        AnimatedControllerScreen(),
        AnimatedControllerScreen(),
        AnimatedControllerScreen(),
        AnimatedControllerScreen(),
      ]),
    );
  }
}
