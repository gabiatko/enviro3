import 'package:flutter/material.dart';

import '../widgets/MyAppBar.dart';
import '../widgets/MyBottomBar.dart';

class Vyzvy extends StatefulWidget {
  const Vyzvy({Key? key}) : super(key: key);

  @override
  State<Vyzvy> createState() => _VyzvyState();
}

class _VyzvyState extends State<Vyzvy> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: MyappBar(
        height: 50.0,
        title: 'Environmentálny fond',
        backgroundcolor: Colors.white70,
        color: Colors.green,
      ),
      body:SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),

          child: Text(
            'Vyzvy',

          ),
        ),
      ),
      bottomNavigationBar: MybottomBar(),
    );
  }
}
