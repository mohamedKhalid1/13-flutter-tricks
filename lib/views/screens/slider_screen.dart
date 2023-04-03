import 'package:flutter/material.dart';
import 'package:top_20_flutter_tricks/views/screens/transform_screen.dart';

class SliderScreen extends StatefulWidget {
  SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double currentValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Slider Widget",
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TransformScreen(),
                  ));
            },
            icon: const Icon(Icons.arrow_forward_ios_outlined),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(currentValue.toInt().toString(),style: const TextStyle(fontSize: 30),),
          Slider(
            value: currentValue,
            onChanged: (double value) {
              setState(() {
                currentValue = value;
              });
            },
            min: 0,
            max: 100,
          ),
        ],
      ),
    );
  }
}
