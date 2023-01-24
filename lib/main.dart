import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  final List<Color> color = [Colors.amber, Colors.red, Colors.blue, Colors.purple];
  final List<Widget> widgetGenerator = List.generate(100, (index) => Container(
    child: Text("Hallo + ${index}"),
  ));

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green,
        //Color(0xfffffff)
        // body: Center(
        //   child: Text("Ini adalah aplikasi newsappIni adalah aplikasi newsappIni adalah aplikasi newsappIni adalah aplikasi newsappIni adalah aplikasi newsappIni adalah aplikasi newsappIni adalah aplikasi newsappIni adalah aplikasi newsappIni adalah aplikasi newsappIni adalah aplikasi newsapp",
        //   maxLines: 4,
        //   overflow: TextOverflow.ellipsis,
        //   textAlign: TextAlign.center,
        //   style: TextStyle(
        //     backgroundColor: Colors.blueAccent,
        //     color: Colors.red,
        //     fontSize: 30,
        //     fontWeight: FontWeight.bold,
        //     letterSpacing: 12.5,
        //     fontFamily: 'Roboto',
        //     decorationStyle: TextDecorationStyle.solid,
        //     decoration: TextDecoration.underline,
        //     decorationColor: Colors.amber,
        //     decorationThickness: 2
        //   ),)
        //   ),

        /** with builder */
    //     body: ListView.builder(
    //       itemCount: 4,
    //       itemBuilder: (BuildContext context, int index) { 
    // return Container(
    //         color: Colors.green, 
    //         child: Text("Hello Generate ${index+1}"
    //             , style: TextStyle(
    //               color: color[index]
    //             ),
    //         ),
    //       );

    //      },

    //     ),


/** with generator */
    body: ListView(
      children: widgetGenerator,
    ),
        appBar: AppBar(
          title: Text("News App"), centerTitle: true,
        ),
      )
    );
  }

}