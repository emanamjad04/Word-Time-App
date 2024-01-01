import 'package:flutter/material.dart';
import 'package:world_time_app/country.dart';
import 'package:world_time_app/cards.dart';
import 'package:world_time_app/services/worldTime.dart';
class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List<worldTimee> loc =
  [worldTimee(location: 'London', flag: 'Londonflag.png', url: 'Europe/London'),
  worldTimee(location: 'Pakistan', flag: 'Pakistan.png', url: 'Asia/Karachi'),
    worldTimee(location: 'Istanbul', flag: 'Turkey.png', url: 'Europe/Istanbul'),
    worldTimee(location: 'Finland', flag: 'finlandflag.png', url: 'Europe/Helsinki'),
    worldTimee(location: 'Berlin', flag: 'Berlinflag.png', url: 'Europe/Berlin'),
    worldTimee(location: 'Kabul', flag: 'kabulflag.jpg', url: 'Asia/Kabul'),
    worldTimee(location: 'Los Angles', flag: 'Losangles.png', url: 'America/Los_Angeles'),
    worldTimee(location: 'Chicago', flag: 'Chicagoflag.png', url: 'America/Chicago'),
    worldTimee(location: 'Qatar', flag: 'qatarflag.png', url: 'Asia/Qatar'),
    worldTimee(location: 'Dubai', flag: 'Dubaiflag.png', url: 'Asia/Dubai'),




  ];

  int count=0;
  @override
  Widget build(BuildContext context) {
    print("build ran");
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Choose location"),
        backgroundColor: Colors.blue[900],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: ListView.builder(
          itemCount: loc.length,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 5),
              child: Card(
                child: ListTile(
                  onTap:()async{
                    await loc[index].getTime();
                    Navigator.pushReplacementNamed(context, '/home',arguments: {
                      'location' :loc[index].location,
                      'flag':loc[index].flag,
                      'time':loc[index].time,
                      'day':loc[index].day, });},
                  title: Text(loc[index].location,style: TextStyle(
                    fontSize: 25,
                    letterSpacing: 1,
                  ),),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/${loc[index].flag}'),
                  ),
                ),
              ),
            );
          }
      ),
      // Column(
      //   children: loc.map((e) => cards(coun: e,
      //       show: ()async{
      //         await e.getTime();
      //         Navigator.pushReplacementNamed(context, '/home',arguments: {
      //           'location' : e.location,
      //           'flag':e.flag,
      //           'time':e.time,
      //           'day':e.day,
          // Navigator.pushReplacementNamed(context,'/',arguments: {
          //   'location':e.c_name,
          //   'url' : e.c_url,
          //   'flag':e.c_flag
      //     });
      //       })).toList(),
      // // )
    );
  }
}
