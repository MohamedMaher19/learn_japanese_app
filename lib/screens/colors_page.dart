import 'package:flutter/material.dart';
import 'package:toku_app/components/item.dart';
import 'package:toku_app/models/number_model.dart';

class ColorsPage extends StatelessWidget {
  ColorsPage({Key? key}) : super(key: key);

  final List<Number> colors = [
    Number(
      sound: 'black.wav',
      japName: 'Burakku',
      engName: 'black',
      image: 'assets/images/colors/color_black.png',
    ),
    Number(
      sound: 'brown.wav',
      japName: 'Chairo',
      engName: 'brown',
      image: 'assets/images/colors/color_brown.png',
    ),
    Number(
      sound: 'dusty yellow.wav',
      japName: 'Hokori ppoi kiiro',
      engName: 'dusty yellow',
      image: 'assets/images/colors/color_dusty_yellow.png',
    ),
    Number(
      sound: 'gray.wav',
      japName: 'Gurē',
      engName: 'gray',
      image: 'assets/images/colors/color_gray.png',
    ),
    Number(
      sound: 'green.wav',
      japName: 'Midori',
      engName: 'green',
      image: 'assets/images/colors/color_green.png',
    ),
    Number(
      sound: 'red.wav',
      japName: 'Aka',
      engName: 'red',
      image: 'assets/images/colors/color_red.png',
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Colors'),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (BuildContext context, int index) {
          return ListItem(

            itemType:'colors',
            color: Color(0xff50ADC7),
            number: colors[index],
          );
        },
      ),
    );
  }
}

