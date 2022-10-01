import 'package:flutter/material.dart';
import 'package:enviro/widgets/MyAppBar.dart';
import 'package:enviro/widgets/MyBottomBar.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

 int count=0;

  @override
  Widget build(BuildContext context) {
    print('buildstate running');
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: const MyappBar(
        height: 50.0,
        title: 'Environmentálny fond',
        backgroundcolor: Colors.white70,
        color: Colors.green,
      ),
      body:SafeArea(
        child: Container(
          child: Column(
            children: [
              const Text(
                'Location screen',
              ),
              ElevatedButton.icon(   // <-- ElevatedButton
                onPressed: () {
                  setState(() {
                    count+=1;
                  });
                  // Navigator.pushNamed(context, '/location');
                },
                icon: const Icon(
                  Icons.edit_location,
                  size: 24.0,
                ),
                style: ElevatedButton.styleFrom(
                  primary:Colors.cyanAccent,
                  onPrimary:Colors.blue,
                  shadowColor: Colors.amber,
                  elevation:3,
                ),
                label: Text('Location'),
              ),
              Text(' fffd  '+count.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
