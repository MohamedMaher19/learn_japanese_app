import 'package:flutter/material.dart';
import 'package:toku_app/components/item.dart';
import 'package:toku_app/models/number_model.dart';

class FamilyMempers extends StatelessWidget {
   FamilyMempers({Key? key}) : super(key: key);

  final List<Number> familyMembers = [
    Number(
      sound: 'father.wav',
      japName: 'Chichioya',
      engName: 'father',
      image: 'assets/images/family_members/family_father.png',
    ),
    Number(
      sound: 'daughter.wav',
      japName: 'Musume',
      engName: 'daughter',
      image: 'assets/images/family_members/family_daughter.png',
    ),
    Number(
      sound: 'grand father.wav',
      japName: 'Ojīsan',
      engName: 'Grand Father',
      image: 'assets/images/family_members/family_grandfather.png',
    ),
    Number(
      sound: 'mother.wav',
      japName: 'Hahaoya',
      engName: 'mother',
      image: 'assets/images/family_members/family_mother.png',
    ),
    Number(
      sound: 'grand mother.wav',
      japName: 'Sobo',
      engName: 'grand mother',
      image: 'assets/images/family_members/family_grandmother.png',
    ),
    Number(
      sound: 'older bother.wav',
      japName: 'Nīsan',
      engName: 'older brother',
      image: 'assets/images/family_members/family_older_brother.png',
    ),
    Number(
      sound: 'older sister.wav',
      japName: 'Ane',
      engName: 'older sister',
      image: 'assets/images/family_members/family_older_sister.png',
    ),
    Number(
      sound: 'son.wav',
      japName: 'Musuko',
      engName: 'son',
      image: 'assets/images/family_members/family_son.png',
    ),
    Number(
      sound: 'younger brohter.wav',
      japName: 'otōto',
      engName: 'younger brother',
      image: 'assets/images/family_members/family_younger_brother.png',
    ),
    Number(
      sound: 'younger sister.wav',
      japName: 'Imōto',
      engName: 'younger sister',
      image: 'assets/images/family_members/family_younger_sister.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Family Members'),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: familyMembers.length,
        itemBuilder: (BuildContext context, int index) {
          return ListItem(

            itemType:'family_members' ,
            color: const Color(0xff50ADC7),
            number: familyMembers[index],
          );
        },
      ),
    );
  }
  }

