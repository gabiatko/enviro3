import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:enviro/services/znacky.dart';

// import 'package:http/http.dart';
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

    // print('build news:  '+args[0]['post_date'].toString());
    // print('build znacky:  '+znacky.toString());
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
            child:ListView.builder(
              itemCount: args.length,
              itemBuilder: (BuildContext context, int index){

                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
                  child: Card(
                    elevation:5.0,
                    child: ExpansionTile(
                      // onTap: () {},
                      title:Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0 ),
                        child: Text("${args[index]['post_title']}",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 12.0,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      // SizedBox(height: 8),
                      subtitle:Padding(
                        padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 5.0),
                        child:
                        Text("${args[index]['post_date']}",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 8.0,
                          ),
                        ),
                      ),
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5.0),
                            child:Html(
                                data:args[index]['post_content'],
                                onLinkTap: (url, _, __, ___) {
                                    print("Opening $url...");
                                },
                                onImageTap: (src, _, __, ___) {
                                  print(src);
                                },
                            ),
                            // child: Text("${args[index]['post_content']}",
                            //   style: TextStyle(
                            //     fontWeight: FontWeight.w700,
                            //     fontSize: 10.0,
                            //   ),
                            // ),
                        ),
                      ],
                    ),
                  ),
                );
              },
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

  Widget _pakedCard(){
    return ListView.builder(
      itemCount: args.length,
      itemBuilder: (BuildContext context, int index){
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
          child: Card(
            elevation:5.0,
            child: ListTile(
              onTap: () {},
              title:Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0 ),
                child: Text("${args[index]['post_title']}",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 12.0,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              // SizedBox(height: 8),
              subtitle:Padding(
                padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 5.0),
                child: Text("${args[index]['post_date']}",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 8.0,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
