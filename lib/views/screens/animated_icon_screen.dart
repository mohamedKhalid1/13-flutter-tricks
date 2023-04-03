import 'package:flutter/material.dart';
import 'package:top_20_flutter_tricks/views/screens/animated_controller.dart';

class AnimatedIconScreen extends StatefulWidget {
  const AnimatedIconScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedIconScreen> createState() => _AnimatedIconScreenState();
}

class _AnimatedIconScreenState extends State<AnimatedIconScreen> with TickerProviderStateMixin{
  bool isChanged = false;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
  }

  @override
  Widget build(BuildContext context) {
    void trigger() {
      setState(() {
        isChanged = !isChanged;
        isChanged ? controller.forward() : controller.reverse();
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedIcon Widget"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AnimatedControllerScreen(),
                  ));
            },
            icon: const Icon(Icons.arrow_forward_ios_outlined),
          ),
        ],
      ),
      body: Center(
        child: IconButton(
          iconSize: 100,
            onPressed: trigger,
            icon: AnimatedIcon(
              icon: AnimatedIcons.menu_close,
              progress: controller,
              color: Colors.redAccent,
            )),
      ),
    );
  }
}
