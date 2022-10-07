import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:async';
import 'package:enviro/services/getjson.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {


  // void getData() async{
  //   // Response response= await get('https://jsonplaceholder.typicode.com/todos/1');
  //   var url =
  //     // Uri.https('jsonplaceholder.typicode.com', 'todos/1');
  //     // Uri.https('envirof.envirofond.sk', 'news');
  //     Uri.http('worldtimeapi.org', 'api/timezone/Europe/London');
  //
  //   // Await the http get response, then decode the json-formatted response.
  //   var response = await get(url);
  //   // print(response.body);
  //   //
  //   if (response.statusCode == 200) {
  //     Map jsonResponse = jsonDecode(response.body);
  //     // List jsonResponse = convert.jsonDecode(response.body);
  //     // as Map<dynamic>;
  //     // var itemCount = jsonResponse['userId'];
  //     print('Number of books about http: $jsonResponse.   '+ jsonResponse['datetime'].toString());
  //     // print('Number of books about http: $itemCount.');
  //     // print('00 Response ----- http: '+jsonResponse[0]['post_date'].toString());
  //     // print('11 Response ----- http: '+jsonResponse[1]['post_name'].toString());
  //   } else {
  //     print('Request failed with status: ${response.statusCode}.');
  //   }
  // //
  // }

  // void getTime() async{
    // var url =
    //    Uri.http('worldtimeapi.org', 'api/timezone/Europe/Amsterdam');
    // var response = await get(url);
    // if (response.statusCode == 200) {
    //   Map jsonResponse = jsonDecode(response.body);
    //
    //   // print('Time is: '+ jsonResponse['datetime'].toString());
    //
    //   String datetime=jsonResponse['datetime'].toString();
    //   String offset=jsonResponse['utc_offset'].toString().substring(1,3);
    //   print('dateTime is: '+ datetime);
    //   print('offset is: '+ offset);
    //
    //   // create date object
    //   DateTime teraz=DateTime.parse(datetime);
    //   teraz=teraz.add(Duration(hours: int.parse(offset)));
    //   print(teraz);
    //
    //
    // } else {
    //   print('Request failed with status: ${response.statusCode}.');
    // }

  // }
  // void getData() async{
  //   String name=await Future.delayed(
  //       const Duration(seconds: 5),()
  //   {
  //     return 'Simino meno';
  //   }
  //   );
  //   String fruit= await Future.delayed(
  //       const Duration(seconds: 5),()
  //   {
  //     return 'jablko, banan';
  //   }
  //   );
  //   print(name+'   '+fruit);
  // }

    String cas="Loading...";
    String text1="";
    String text2="";


  void setupWorldTime() async{
    WorldTime instance=WorldTime(location: 'Bratislava', flag: 'slovakia.png', url: 'Europe/Bratislava');
    await instance.getTime();
    // print(instance);
    // Map<String, dynamic> mapsc = {
    //   'flag':instance.flag,
    //   'location':instance.location,
    //   'time':instance.time,
    // };
    // print('1111');
    // print(mapsc);
    // print('2222');
    await Future.delayed(
              const Duration(seconds: 1),()
              {
            setState(() {
              text1=    "Environmentálny";
                          });
              }
            );

    await Future.delayed(
              const Duration(seconds: 1),()
          {
            setState(() {

              text2="fond";
                          });
          });
    await Future.delayed(
              const Duration(seconds: 1),()
          {
          });

    // Navigator.pushReplacementNamed(context, '/worldtimepage',
    //     arguments: mapsc
    // );
    // Map ScArguments={};
    Navigator.pushReplacementNamed(context, '/worldtimepage',
        arguments: {
        'location': instance.location,
        'time': instance.time,
        'flag': instance.flag,
        'isDateTime':instance.isDateTime
        }
    );

    // print (instance.time);
    // setState(() {
    //   cas=instance.time;
    // });
  }

  @override
  void initState() {
    super.initState();
    print('initstate running loading.dart');
    // getTime();
    // getData();
    setupWorldTime();


  }

  Widget build(BuildContext context) {
    // setupWorldTime();
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


