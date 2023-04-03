import 'package:flutter/material.dart';
import 'package:top_20_flutter_tricks/views/screens/pageView_screen.dart';

class ListWheelScrollViewScreen extends StatelessWidget {
  const ListWheelScrollViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ListWheelScrollView Widget",
          style: TextStyle(fontSize: 20),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PageViewScreen(),
                  ));
            },
            icon: const Icon(Icons.arrow_forward_ios_outlined),
          ),
        ],
      ),
      body: ListWheelScrollView(itemExtent: 250, children: [
        Container(color: Colors.red,height: 100,),
        Container(color: Colors.greenAccent,height: 100,),
        Container(color: Colors.black,height: 100,),
        Container(color: Colors.blue,height: 100,),
        Container(color: Colors.amber,height: 100,),
        Container(color: Colors.lightGreen,height: 100,),
        Container(color: Colors.deepPurple,height: 100,),
        Container(color: Colors.grey,height: 100,),
      ],),
    );
  }
}
