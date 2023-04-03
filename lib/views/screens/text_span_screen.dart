import 'package:flutter/material.dart';
import 'package:top_20_flutter_tricks/views/screens/flexible_screen.dart';

class TextSpanScreen extends StatelessWidget {
  const TextSpanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Text Rich Widget"),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FlexibleScreen(),
                    ));
              },
              icon: const Icon(Icons.arrow_forward_ios_outlined),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                      text: "simple example for",
                      style: TextStyle(color: Colors.black, fontSize: 20)),
                  TextSpan(
                      text: " text span",
                      style: TextStyle(color: Colors.blue, fontSize: 30)),
                  TextSpan(
                      text: " with flutter",
                      style: TextStyle(color: Colors.red, fontSize: 18)),
                  TextSpan(
                      text: " , thanks",
                      style: TextStyle(color: Colors.green, fontSize: 25)),
                ],
              ),
            ),
          ),
        ));
  }
}
