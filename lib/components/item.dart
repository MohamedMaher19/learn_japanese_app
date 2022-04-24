import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/number_model.dart';

class ListItem extends StatelessWidget {
  const ListItem({Key? key,required this.number,required this.color,required this.itemType}) : super(key: key);


  final Number number ;
  final Color color;
  final String itemType;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 115,
      child: Row(
        children: [
          Container(
              color: const Color(0xffFFF6DC),
              child: Image.asset(number.image)),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(number.japName ,  style: const TextStyle(color: Colors.white , fontSize: 19),),
                Text(number.engName ,  style: const TextStyle(color: Colors.white , fontSize: 19),),

              ],
            ),
          ),
          const Spacer(),

          IconButton(onPressed: (){
            try{
              AudioCache player = AudioCache(prefix:'assets/sounds/$itemType/' );
            player.play(number.sound);
            }catch(ex){
              print(ex);
            }


          },
              icon: const Icon(Icons.play_circle_fill , color: Colors.white,)),

        ],
      ),
    );
  }
}
