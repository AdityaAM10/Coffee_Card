import 'package:coffee_card/styled_body_text.dart';
import 'package:flutter/material.dart';
import 'coffee_prefs.dart';

class Myhome extends StatelessWidget {
  const Myhome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Coffee Id', style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        )),
        backgroundColor: Colors.brown,
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,


        children: [
          Container(
            color: Colors.brown[300],
            padding: const EdgeInsets.all(20),
            child: StyledBodyText("How I Like My Coffee"),
          ),
          Container(
            color: Colors.brown[100],
            padding: const EdgeInsets.all(20),
            child: const CoffeePrefs(),
          ),
          Expanded(child: Image.asset('assets/Img/coffee_bg.jpg',
            fit: BoxFit.fitWidth,
            alignment: Alignment.bottomCenter,
            ),
          ),
        ],
      )
    );
  }
}