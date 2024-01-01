import 'package:world_time_app/services/worldTime.dart';
import 'package:flutter/material.dart';
class cards extends StatelessWidget {

  final worldTimee? coun;
  VoidCallback? show;


  cards({required this.coun,required this.show});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue[900],

      margin:EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                coun!.location as String,
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white
                ),
              ),
            ),
            SizedBox(height: 8,),
            TextButton.icon(
                onPressed: show,
                icon: Icon(Icons.add_circle,color: Colors.white,),
              label: Text('ADD',style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),),

            )

          ],
        ),
      ),
    );
  }
}
