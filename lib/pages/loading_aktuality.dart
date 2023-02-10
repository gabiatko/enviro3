import 'package:enviro/services/getjson.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingAktuality extends StatefulWidget {
  const LoadingAktuality({Key? key}) : super(key: key);

  @override
  State<LoadingAktuality> createState() => _LoadingAktualityState();
}

class _LoadingAktualityState extends State<LoadingAktuality> {

  void setupGetNovinky() async {
    GetJson instance = GetJson();
    await instance.getNovinky();
    // print(instance.jsonResponse);
    Navigator.pushReplacementNamed(context, '/novinky',
    arguments: instance.jsonResponse
    );
  }


@override
  void initState() {

    setupGetNovinky();
    super.initState();
  }



  @override
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

              Container(
                height: 80.0,
              ),
              Text('LOADING PAGE'),

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
