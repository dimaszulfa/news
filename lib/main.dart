import 'dart:developer' as logDev;

import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  var chatItems =ChatItem();
  logDev.log(chatItems.toString());

    if(chatItems is Widget){
      logDev.log("WIDGET");
  } else{
          logDev.log("Not Widget");

  }
  runApp(MyApp());

}

class MyApp extends StatelessWidget{

  var faker = Faker();

  final List<Color> color = [Colors.amber, Colors.red, Colors.blue, Colors.purple];
  final List<Widget> widgetGenerator = List.generate(100, (index) => Container(
    
    child: Text("Hallo + ${index}"),
    

  
  ),);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
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

//##ada row, colum, stack
/** Lsit view with generator */
    // body: ListView(
    //   children: widgetGenerator,
    // ),


//List tile with list view, display like a whatsapp chat
// body: ListView(
//   children: const [ListTile(
//     // EdgeInsets.only(top: 50) --> only top padding
//     // EdgeInsets.symmetric(vertical: 50, horizontal 8) --> atas bawah 50, horizontal 8
//     contentPadding: EdgeInsets.all(10), //padding
//     leading:  CircleAvatar(),
//     title:  Text("Dimas Zulfa Santana"),
//     tileColor: Colors.yellow,
//     textColor: Colors.green,
//     dense: false, //kepadatan biar lebih rapat
//     subtitle:  Text("Hallo ini saya, dimasadasdasdasdasdasdasdasdasdassadadadadadadadadadadadadadadadasdasdasdasdasdasdasdasdasdasds", maxLines: 1, overflow: TextOverflow.ellipsis,),
//     trailing:  Text("10.00 PM")

//   ),
//   Divider(),
//   ListTile(
//     leading:  CircleAvatar(),
//     title:  Text("Dimas Zulfa Santana"),
//     subtitle:  Text("Hallo ini saya, dimas"),
//     trailing:  Text("10.00 PM")

//   ),
//   ],
// ),

//jenis provider image ada 4, imageasset, network, memory file

// body: Center(child: Container(
//   width: 350,
//   height: 500,
//   color: Colors.green,
//   child: Image.asset("assets/images/rockstar.png", fit: BoxFit.cover), //Image.asset / Image.network sudah mempunyai frame widget
//   // child: Image(
//   //   fit: BoxFit.cover, //keseluruhan widget
//   //   // BoxFit.contain, //ntah dari tinggi atau panjang
//   //   // image: AssetImage("assets/images/rockstar.png"), // by assets
//   //   image: NetworkImage("https://picsum.photos/200/300"),
//   //   ),
// )),


//listview extrak widget


































































































































































































// body: ListView(
//   children: [ChatItem()],
// ),

body: ListView.builder(itemCount: 100, itemBuilder: (context, index) => 
     ChatItem(imageUri: "https://picsum.photos/id/$index/200/300",name: faker.person.name(),subtitle: faker.lorem.sentence(),)
),
        appBar: AppBar(
          title: Text("News App"), centerTitle: true,
        ),
      )
    );


  }

}



class ChatItem extends StatelessWidget {

  var imageUri;
  var name;
  var subtitle;

  ChatItem({this.imageUri,this.name,this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      subtitle: Text(subtitle),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUri),
      ),
      trailing: Text("10.00 PM"),
    );
  }
}