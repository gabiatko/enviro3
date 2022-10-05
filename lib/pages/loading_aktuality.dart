import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:async';
import 'package:enviro/services/getjson.dart';

class LoadingAktuality extends StatefulWidget {
  const LoadingAktuality({Key? key}) : super(key: key);

  @override
  State<LoadingAktuality> createState() => _LoadingState();
}

class _LoadingState extends State<LoadingAktuality> {


    String cas="Loading...";
    String text1="";
    String text2="";


  void setupNovinky() async{
    GetJson instance=GetJson();
    await instance.getNovinky();

    await Future.delayed(
              const Duration(milliseconds: 300),()
              {
            setState(() {
              text1=    "Environmentálny";
                          });
              }
            );

    await Future.delayed(
              const Duration(milliseconds: 300),()
          {
            setState(() {

              text2="fond 2";
                          });
          });
    await Future.delayed(
              const Duration(milliseconds: 500),()
          {
          });

    print (instance.getNovinky());

    Navigator.pushReplacementNamed(context, '/novinky');
    // ,
    //     arguments: {
    //     'location': instance.location,
    //     'time': instance.time,
    //     'flag': instance.flag,
    //     'isDateTime':instance.isDateTime
    //     }
    // );

  }

  @override
  void initState() {
    super.initState();

    setupNovinky();


  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/splashscreen/ef_mobil_bg_logo.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                height: 30.0,
              ),
              Text(text1,
                style: TextStyle(
                  color: Colors.white70,
                  fontWeight: FontWeight.w900,
                  fontSize: 30.0,
                ),
              ),
              Text(text2,
                style: TextStyle(
                  color: Colors.white70,
                  fontWeight: FontWeight.w900,
                  fontSize: 30.0,
                ),
              ),
              Container(
                height: 80.0,
              ),
              Text('LOADING PAGE'),
              Text(cas,
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w900,
                    ),
              ),
              Container(
                height: 80.0,
              ),
              SpinKitPouringHourGlassRefined(
                // itemBuilder: (BuildContext context, int index) {
                    // return DecoratedBox(
                        // decoration: BoxDecoration(
                          // color: index.isEven ? Colors.red : Colors.green,
                        // ),
                    // );
                // },
                  color: Colors.white,
                  size: 100.0
             ),
            ],
          ),
        ),
      ),
    );
  }
}


