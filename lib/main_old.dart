import 'package:flutter/material.dart';
import 'widgets/Nejaky.dart';

void main() {
  runApp(MaterialApp(
      home: MojaTrieda()
  )
  );
}

class MojaTrieda extends StatelessWidget {
  const MojaTrieda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nazdarek'),
        centerTitle:  true,
        backgroundColor: Colors.red[300],
      ),
      // body:Nejaky('3','10'),
      body: RowWidget(cislo1:'3',cislo2:'10'),

      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.green,
        child: const Center(
            child: Text('Click +',
              textAlign: TextAlign.center,
            )
        ),
      ),
    );

  }

  // Widget Nejaky(cislo1, cislo2){
  //   return RowWidget(cislo1:cislo1,cislo2:cislo2);
  // }

}
