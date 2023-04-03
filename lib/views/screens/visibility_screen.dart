import 'package:flutter/material.dart';
import 'package:top_20_flutter_tricks/views/screens/animated_icon_screen.dart';

class VisibilityScreen extends StatefulWidget {
  const VisibilityScreen({Key? key}) : super(key: key);

  @override
  State<VisibilityScreen> createState() => _VisibilityScreenState();
}

bool visible = false;

class _VisibilityScreenState extends State<VisibilityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Visibility Widget"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AnimatedIconScreen(),
                  ));
            },
            icon: const Icon(Icons.arrow_forward_ios_outlined),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  visible = !visible;
                });
              },
              child: Text(visible?"not visible":"visible"),
            ),
            Visibility(
              visible: visible,
              child: const Image(
                image:
                    NetworkImage("https://img.youm7.com/large/9201513140809.jpg"),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Button 2"),
            ),
          ],
        ),
      ),
    );
  }
}
