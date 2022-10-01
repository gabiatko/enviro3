import 'package:flutter/material.dart';
import 'package:enviro/widgets/MyAppBar.dart';
import 'package:enviro/widgets/MyBottomBar.dart';
// import 'package:enviro/services/getjson.dart';

class WorldTimePage extends StatefulWidget {
  const WorldTimePage({Key? key}) : super(key: key);

  @override
  State<WorldTimePage> createState() => _WorldTimePageState();
}

class _WorldTimePageState extends State<WorldTimePage> {
  // Map data={};

  @override
  Widget build(BuildContext context) {

    Map args=ModalRoute.of(context)!.settings.arguments as Map; //toto prijima arguments

    print(args['time']);


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
              Text('nejaky'),
              Text('nejaky2'),
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
              TextButton.icon(     // <-- TextButton
                onPressed: () {},
                icon: const Icon(
                  Icons.download,
                  size: 24.0,
                ),
                label: const Text('Download'),
              ),
              OutlinedButton.icon( // <-- OutlinedButton
                onPressed: () {},
                icon: const Icon(
                  Icons.download,
                  size: 24.0,
                ),
                label: Text('Download'),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MybottomBar(),
    );
  }
}


