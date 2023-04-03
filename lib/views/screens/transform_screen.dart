import 'package:flutter/material.dart';
import 'package:top_20_flutter_tricks/views/screens/listWheelScrollView_screen.dart';

class TransformScreen extends StatelessWidget {
  const TransformScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        title: const Text("Transform Widget"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ListWheelScrollViewScreen(),
                  ));
            },
            icon: const Icon(Icons.arrow_forward_ios_outlined),
          ),
        ],
      ),
      body: Center(
        child: Transform(
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.001)
            ..rotateX(0.1)
            ..rotateY(0.1),
          child: GestureDetector(
            child: Container(
              child: Image.network(
                "https://img.youm7.com/large/9201513140809.jpg",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
