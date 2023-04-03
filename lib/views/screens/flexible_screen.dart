import 'package:flutter/material.dart';
import 'package:top_20_flutter_tricks/views/screens/wrap_screen.dart';

class FlexibleScreen extends StatelessWidget {
  const FlexibleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flexible Widget"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WrapScreen(),
                  ));
            },
            icon: const Icon(Icons.arrow_forward_ios_outlined),
          ),
        ],
      ),
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.redAccent,
            ),
          ),
          Flexible(
            flex: 4,
            child: Container(
              color: Colors.greenAccent,
            ),
          ),
          Flexible(
            flex: 3,
            child: Container(
              color: Colors.blue,
            ),
          ),
          Flexible(
            flex: 6,
            child: Container(
              color: Colors.orange,
            ),
          ),
          Flexible(
            flex: 8,
            child: Container(
              color: Colors.white,
            ),
          ),
          Flexible(
            flex: 3,
            child: Container(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
