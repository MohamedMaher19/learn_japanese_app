
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  String? text ;
  Color ? color ;
  Function()? press;

  Category ({this.color, this.text, this.press});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.only(left: 15.0),
        alignment: Alignment.center,
        height: 70,
        width: double.infinity,
        color: color,
        child: Text(text! , style: const TextStyle(
            fontSize: 22,
            color: Colors.white
        ),),
      ),
    );
  }
}