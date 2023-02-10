// import 'dart:js';

import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

import 'pages/home.dart';
import 'pages/worldtime.dart';
import 'pages/loading.dart';
import 'pages/loading_aktuality.dart';
import 'pages/novinky.dart';
import 'pages/vyzvy.dart';
import 'pages/choose_location.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // // Step 3
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  //   DeviceOrientation.portraitDown,
  // ]).then((value)=>



  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),
    initialRoute:
    '/loadingAktuality',
    // '/novinky',
    // home: Home(),
    routes: {
      // '/':(context) => Loading(),
      '/home': (context) => Home(),
      '/worldtimepage': (context) => WorldTimePage(),
      '/novinky': (context) => Novinky(),
      '/vyzvy': (context) => Vyzvy(),
      '/loading': (context) => Loading(),
      '/loadingAktuality': (context) => LoadingAktuality(),
      '/location': (context) => ChooseLocation(),
    },
  ))
  // )
  ;
}





