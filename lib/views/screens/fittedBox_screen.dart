import 'package:flutter/material.dart';
import 'package:top_20_flutter_tricks/views/screens/visibility_screen.dart';
import 'package:top_20_flutter_tricks/views/screens/wrap_screen.dart';

class FittedBoxScreen extends StatelessWidget {
  const FittedBoxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FittedBox Widget"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const VisibilityScreen(),
                  ));
            },
            icon: const Icon(Icons.arrow_forward_ios_outlined),
          ),
        ],
      ),
      //fitted box
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.blueAccent,
          child:const FittedBox(child: Center(child: Text("fitted box"))),
        ),
      ),
    );
  }
}
