import 'package:flutter/material.dart';
import 'package:top_20_flutter_tricks/views/screens/slider_screen.dart';

class InteractiveViewerScreen extends StatelessWidget {
  const InteractiveViewerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "InteractiveViewer Widget",
          style: TextStyle(fontSize: 20),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SliderScreen(),
                  ));
            },
            icon: const Icon(Icons.arrow_forward_ios_outlined),
          ),
        ],
      ),
      body: InteractiveViewer(
        child: Image.network(
          "https://img.youm7.com/large/9201513140809.jpg",
        ),
      ),
    );
  }
}
