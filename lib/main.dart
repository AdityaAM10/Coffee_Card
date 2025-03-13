import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(MaterialApp(
    home: Myhome(),
  ));
}

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Sandbox'),
        backgroundColor: Colors.grey,
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,


        children: [
          Container(
            //padding: const EdgeInsets.all(20),
            height: 100,
            color: Colors.red,
            child: Text('one'),
          ),
          Container(
           // padding: const EdgeInsets.all(30),
            height: 200,
            color: Colors.green,
            child: Text('two'),
          ),
          Container(
            //padding: const EdgeInsets.all(40),
            height: 300,
            color: Colors.blue,
            child: Text('three'),
          ),
        ],
      ) 
    );
  }
}