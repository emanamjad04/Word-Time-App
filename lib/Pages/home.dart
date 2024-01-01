import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data={};

  @override
  Widget build(BuildContext context) {
    data= ModalRoute.of(context)!.settings.arguments as Map;
    String img = data['day']? 'dayimage.jpg' :'nightimage.jpg';
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/$img'),
              fit: BoxFit.cover
          ),
        ),
        child: SafeArea(
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 120, 0, 0),
                child: Column(
                  children: [
                    TextButton.icon(
                      onPressed: (){
                        Navigator.pushNamed(context,'/location');
                      },
                      icon: Icon(Icons.edit_location,
                      color:Colors.grey[300],),
                      label: Text("Change location",
                      style: TextStyle(
                        color: Colors.grey[300]
                      ),),
                    ),
                    SizedBox(height: 20.0,),
                        Center(
                          child: Text(
                            data['location'],
                            style: TextStyle(
                              fontSize: 28,
                              letterSpacing: 2,
                              color: Colors.white
                            ),
                          ),
                        ),
                    SizedBox(height: 20,),
                    Text(
                      data['time'],
                      style: TextStyle(
                        fontSize: 50,
                          color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),

        ),
      ),
    );
  }
}
