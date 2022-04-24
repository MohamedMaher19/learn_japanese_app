import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/components/item.dart';
import 'package:toku_app/models/number_model.dart';

class NumbersPage extends StatelessWidget {
  NumbersPage({Key? key}) : super(key: key);

  final List<Number> numbers = [
    Number(
      sound:'number_one_sound.mp3' ,
        japName: 'ichi',
        image: 'assets/images/numbers/number_one.png',
        engName: 'One'),
    Number(
      sound:'number_two_sound.mp3' ,
        japName: 'Ni',
        image: 'assets/images/numbers/number_two.png',
        engName: 'Two'),
    Number(
      sound: 'number_three_sound.mp3',
        japName: 'San',
        image: 'assets/images/numbers/number_three.png',
        engName: 'Three'),
    Number(
      sound: 'number_four_sound.mp3',
        japName: 'Shi',
        image: 'assets/images/numbers/number_four.png',
        engName: 'Four'),
    Number(
      sound: 'number_five_sound.mp3',
        japName: 'Go',
        image: 'assets/images/numbers/number_five.png',
        engName: 'Five'),
    Number(
      sound: 'number_six_sound.mp3',
        japName: 'Roku',
        image: 'assets/images/numbers/number_six.png',
        engName: 'Six'),
    Number(
      sound: 'number_seven_sound.mp3',
        japName: 'Sebun',
        image: 'assets/images/numbers/number_seven.png',
        engName: 'Seven'),
    Number(
      sound: 'number_eight_sound.mp3',
        japName: 'Hachi',
        image: 'assets/images/numbers/number_eight.png',
        engName: 'Eight'),
    Number(
      sound: 'number_nine_sound.mp3',
        japName: 'Kyu',
        image: 'assets/images/numbers/number_nine.png',
        engName: 'Nine'),
    Number(
      sound: 'number_ten_sound.mp3',
        japName: 'Ju',
        image: 'assets/images/numbers/number_ten.png',
        engName: 'Ten'),
  ];

  // final Number one =  Number(
  //     image: 'assets/images/numbers/number_one.png',
  //     engName: 'one',
  //     japName: 'ichi');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Numbers'),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (BuildContext context, int index) {
          return ListItem(
            itemType: 'numbers',
            color:  const Color(0xffEF9235),
            number: numbers[index],
          );
        },
      ),
    );
  }




// طريقة اللوب عشان الف علي اللسته كلها وابني ال item
// وهستعمل معاها ال list view

//   List <Widget> getList (List<Number> numbers){
//     List<Widget> itemList = [];
//     for(int i = 0 ; i< numbers.length ; i++){
//       itemList.add(Item(number: numbers[i],));
//
//     }
//     return itemList;
//
//   }
}
