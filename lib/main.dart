import 'package:flutter/material.dart';
import 'package:world_time_app/Pages/choose_location.dart';
import 'package:world_time_app/Pages/loading.dart';
import 'package:world_time_app/services/check.dart';
import 'Pages/home.dart';
void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/' : (context) => Loading(),
      '/home' : (context) => Home(),
      '/location' : (context) => ChooseLocation(),
    },
  ));
}

