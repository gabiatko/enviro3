import 'package:http/http.dart';
import 'dart:convert';
import 'package:flutter/foundation.dart';


class GetJson{

  // late Map json1;
  String json1='init';
  // late List jsonResponse=[];
  // Map
  // GetJson({})

  Future<List> getNovinky() async{
    List jsonResponse=[];
    var url = Uri.https('envirof.envirofond.sk','news');
    // // Uri.https('envirof.envirofond.sk', '/news', {'q': '{http}'});
    Response response=await get(url);
    // response.body=
    String telo='['+response.body+']';
    print(response.body);
    // if (kDebugMode) {
    //   print(telo);
    // }
    if (kDebugMode) {
      print(response.statusCode);
    }
    // //
    if (response.statusCode == 200) {
      jsonResponse = jsonDecode(telo);

      if (kDebugMode) {
        print ('OK');
      }
      print ('response ' + jsonResponse[2]['guid'].toString());

    } else {
      print ('NIE OK');
    //   print('Request failed with status: ${response.statusCode}.');
    }
    return jsonResponse;
  }
}

class WorldTime {

  String location; // location for UI
  String time = ''; // time for that location
  String flag;
  String url;

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    try {
      // var url = Uri.http('worldtimeapi.org', 'api/timezone/' + this.url);
      var urli = Uri.http('worldtimeapi.org', 'api/timezone/' + url);
      var response = await get(urli);
      // if (response.statusCode == 200) {
      Map jsonResponse = jsonDecode(response.body);

      // print('Time is: '+ jsonResponse['datetime'].toString());

      String datetime = jsonResponse['datetime'].toString();
      String offset = jsonResponse['utc_offset'].toString().substring(1, 3);
      // print('dateTime is: ' + datetime);
      // print('offset is: ' + offset);

      // create date object
      DateTime teraz = DateTime.parse(datetime);
      teraz = teraz.add(Duration(hours: int.parse(offset)));
      // print(teraz);
      time = teraz.toString();
      // } else {
      //   print('Request failed with status: ${response.statusCode}.');
      // }
    }
    catch(e){
    print('caught error: $e');
    time='Zle spojenie!!!';
    }
  }
}
