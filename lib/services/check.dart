import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ch1.dart';
import 'ch2.dart';

class home2 extends StatefulWidget {
  const home2({Key? key}) : super(key: key);

  @override
  State<home2> createState() => _homeState();
}

class _homeState extends State<home2> {
  List image=[
    'dayimage.jpg',
    'nightimage.jpg',
    'dayimage.jpg',

  ];
  List food_choice=[
    'Chinese',
    'Italian',
    'desert' ,
  ];
  List food_choice_decrip=[
    'Chinese is characterized by its bold and harmonious blend of ingredients, cooking techniques and regional variations',
    'It is a cuisine that celebrates the art of slow cooking and the use of high-quality ingredients',
    'Deserts are heavenly craetions that will satisfy our sweet tooth and provide delightful conclusion to a meal'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: image.length,
          itemBuilder: (context,index){
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/'+image[index]),
                      fit: BoxFit.cover
                  )
              ),
              child: Container(
                margin: EdgeInsets.fromLTRB(15, 100, 15, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LText(text: food_choice[index]),
                        SText(text: 'FE'),
                        Container(
                          width: 250,
                            child: SText(text: food_choice_decrip[index],size: 16)),
                      ],
                    ),
                    Column(
                      children: List.generate(image.length, (indexdot){
                        return Container(
                          width: 8,
                          height: (index==indexdot)? 20:8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color:  (index==indexdot)? Colors.lightGreenAccent:Colors.white.withOpacity(0.3),
                          ),
                        );
                      }),
                    )
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}
