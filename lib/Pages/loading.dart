import 'package:flutter/material.dart';
import 'package:world_time_app/services/worldTime.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  // Map <String, dynamic>?chooseloctrans={};
  String time= 'Loading';
  void hehe() async{
      worldTimee w2 = worldTimee(
          location: 'Pakistan', flag: 'flag.png', url: 'Asia/Karachi');
      await w2.getTime();
      Navigator.pushReplacementNamed(context, '/home',arguments: {
        'location' : w2.location,
        'flag':w2.flag,
        'time':w2.time,
        'day':w2.day,
      });
    // }
    // else
    //   {
    // worldTimee w1 = worldTimee(location:chooseloctrans!['location'], flag: chooseloctrans!['flag'],url:chooseloctrans!['url']);
    // await w1.getTime();
    // Navigator.pushReplacementNamed(context, '/home',arguments: {
    //   'location' : w1.location,
    //   'flag':w1.flag,
    //   'time':w1.time,
    //   'day':w1.day,
    // });}
    // setState(() {
    //   time= w1.time;
    // });
  }
  @override
  void initState() {
    super.initState();
    // chooseloctrans= ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>?;
    hehe();

  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.tealAccent,
      body:Center(
        child: SpinKitDualRing(
          color: Colors.white,
          size: 80.0,
        ),
      )
      ,

    );
  }
}
