import 'package:coffee_card/styled_body_text.dart';
import 'package:coffee_card/styled_button.dart';
import 'package:flutter/material.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
 
 int strength = 1;
  int sugar = 1;
 
  void increaseStrength() {
    setState(() {
    strength  = strength < 5 ? strength+ 1 : 1;  
    });
    
  }

  void increaseSugar() {
    setState(() {
    sugar = sugar < 5 ? sugar=sugar+1 : sugar = 0;  
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          children: [
            const StyledBodyText("Strength: "),
        
            for(int i = 0; i<strength; i++)           
                Image.asset('assets/Img/coffee_bean.png',
                    width: 30,
                    color: Colors.brown[100],
                    colorBlendMode: BlendMode.multiply,
                  ),
                   
            const Expanded(child: const SizedBox()), // This is a spacer
            StyledButton(
              onPressed: increaseStrength, 
            child: const Text("+"))
            /* const Text("+"), */
          ],
        ),
        Row(
          children: [
            const StyledBodyText("Sugar: "),
            if (sugar == 0)
                const StyledBodyText("No Sugar..."),

            for(int i = 0  ; i < sugar; i++)
                Image.asset('assets/Img/sugar_cube.png',
                  width: 30,
                  color:Colors.brown[100],
                  colorBlendMode: BlendMode.multiply,
                ),
            const Expanded(child: const SizedBox()), // This is a spacer
            StyledButton(
              
              onPressed: increaseSugar, 
            child: const Text("+")
            )
        ],
        ),
     /*    //lets make another container
        Container(
          color: Colors.brown[300],
          padding: const EdgeInsets.all(20),
          child: Text('Order'),
        ), */
      ],
    );
  } 
}