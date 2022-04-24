
import 'package:flutter/material.dart';
import 'package:toku_app/components/category_item.dart';
import 'package:toku_app/screens/colors_page.dart';
import 'package:toku_app/screens/family_members.dart';
import 'package:toku_app/screens/numbers_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text('Toku Japanese'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Category(
            press: (){

              Navigator.push(context,MaterialPageRoute(builder:(context){
                return NumbersPage();
              } ));
            },
            text: 'Numbers', color: const Color(0xffEF9235),),
          const SizedBox(height: 20,),
          Category(
            press: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return FamilyMempers();
              }

              ));
            },
            text: 'FamilyMembers', color: const Color(0xff50ADC7),),
          const SizedBox(height: 20,),

          Category(
            press: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ColorsPage();
              }

              ));
            },
            text: 'Colors', color: const Color(0xff79359F),),

        ],
      ),
    );
  }
}


