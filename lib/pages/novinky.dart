import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:enviro/services/znacky.dart';

import 'package:http/http.dart';
import 'dart:convert';


import '../widgets/MyAppBar.dart';
import '../widgets/MyBottomBar.dart';
import '../services/getjson.dart';

class Novinky extends StatefulWidget {
  const Novinky({Key? key}) : super(key: key);

  @override
  State<Novinky> createState() => _NovinkyState();
}

class _NovinkyState extends State<Novinky> {
  int currentIndex=0;
  List<Znacky> znacky=[
    Znacky(postDate: 'postDate1', postContent: 'postContent1', postGuide: 'postGuide1'),
    Znacky(postDate: 'postDate2', postContent: 'postContent2', postGuide: 'postGuide2'),
    Znacky(postDate: 'postDate3', postContent: 'postContent3', postGuide: 'postGuide3'),
    Znacky(postDate: 'postDate4', postContent: 'postContent4', postGuide: 'postGuide4'),
  ];


  List jsona=[];
  late List data;

  late String ddd;
  List <String> znacka=[
    'jedna',
    'dva',
    'tri'
  ];

  List args=[];

  @override
  Widget build(BuildContext context) {
    args=ModalRoute.of(context)!.settings.arguments as List;

    print('build news:  '+args[0]['post_date'].toString());
    print('build znacky:  '+znacky.toString());
    return Scaffold(
      appBar: const MyappBar(
        height: 50.0,
        title: 'Environmentálny fond',
        backgroundcolor: Colors.white70,
        color: Colors.green,
      ),
      body:SafeArea(

        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Column(
                //   children:
                //   znacky.map((e) {
                //     return Text('${e.postDate}');
                //   }).toList(),
                // ),

                Container(
                  width: 500.0,

                  child:
                    ListView.builder(
                      itemCount: args.length,
                        itemBuilder: (BuildContext context, int position){
                          return ListTile(
                            title:Text("${args[position]['post_date']}"),
                          );
                        }
                    ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar:  BottomNavigationBar(
          type: BottomNavigationBarType.shifting, // Shifting
          selectedItemColor: Colors.orangeAccent,
          unselectedItemColor: Colors.white70,
          onTap: _onTapIndex,
          currentIndex: currentIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: 'Call',
              backgroundColor: Colors.blue, // <-- This works for shifting
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Message',
              backgroundColor: Colors.green, // <-- This works for shifting
            ),
          ],
      )

    );
  }

  void _onTapIndex(int value) {
    setState(() {
      currentIndex=value;
    });
    print('index: '+ value.toString());

  }
}
