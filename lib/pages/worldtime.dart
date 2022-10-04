import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
import 'package:enviro/widgets/MyAppBar.dart';
import 'package:enviro/widgets/MyBottomBar.dart';
// import 'package:enviro/services/getjson.dart';

class WorldTimePage extends StatefulWidget {
  const WorldTimePage({Key? key}) : super(key: key);

  @override
  State<WorldTimePage> createState() => _WorldTimePageState();
}

class _WorldTimePageState extends State<WorldTimePage> {
  Map args2={};
  String cas='';

  @override
  Widget build(BuildContext context) {

    args2=ModalRoute.of(context)!.settings.arguments as Map; //toto prijima arguments
    // Map scmap=args as Map;
    // print('String time: '+args.time.toString());
    // print('Args: '+args.toString());
    // print('SCMap: '+scmap.toString());
    // Map args2=ModalRoute.of(context)!.settings.arguments as Map; //toto prijima arguments
    print('33333');
    print(args2);
    print('4444');
    // cas=args.time.toString();
    // cas=args2.time.toString();

    return Scaffold(
      appBar: const MyappBar(
        height: 50.0,
        title: 'Environmentálny fond',
        backgroundcolor: Colors.white70,
        color: Colors.green,
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(

            children: [
              Text('WORLDTIME PAGE'),
              // Text('nejaky'),
              // Text('nejaky2'),
              ElevatedButton.icon(   // <-- ElevatedButton
                onPressed: () {
                  Navigator.pushNamed(context, '/loading');
                },
                icon: const Icon(
                  Icons.edit_location,
                  size: 24.0,
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor:Colors.cyanAccent,
                  foregroundColor:Colors.blue,
                  shadowColor: Colors.amber,
                  elevation:3,
                ),
                label: Text('Loading page'),
              ),
              SizedBox(height:20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    args2['location'],
                    style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 2.0,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Text(
                args2['time'],
                style: TextStyle(
                  fontSize: 20.0,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 50.0),
              // TextButton.icon(     // <-- TextButton
              //   onPressed: () {},
              //   icon: const Icon(
              //     Icons.download,
              //     size: 24.0,
              //   ),
              //   label: const Text('Download'),
              // ),
              // // OutlinedButton.icon( // <-- OutlinedButton
              //   onPressed: () {},
              //   icon: const Icon(
              //     Icons.download,
              //     size: 24.0,
              //   ),
              //   label: Text('Download'),
              // ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MybottomBar(),
    );
  }
}


