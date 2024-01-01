import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';
class worldTimee{

  String location="";
  String time="";
  String url="";
  String flag="";
  bool day=false;
  worldTimee({required this.location,required this.flag,required this.url});

  Future<void> getTime() async{
    print("hi");
    try{
      Response response = await get(Uri.parse('http://api.timezonedb.com/v2.1/get-time-zone?key=UP57UBMJITVR&format=json&by=zone&zone=$url')) ;
      Map data = jsonDecode(response.body);
      DateTime dt = DateTime.parse(data['formatted']).toLocal();
      if(response.statusCode==200)
      {
        day= dt.hour>6 && dt.hour<20 ? true:false;
        time=DateFormat.jm().format(dt);

      }
      else
      {
        print("Failed to load");
      }

    }
    catch(e){
      print('caught the error:$e');
      time='couldnt load the time';

    }

  }
}
