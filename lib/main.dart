import 'dart:html';

import 'package:basicapp/items.dart';
import 'package:basicapp/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white38,
        title: Center(child: Text("Ecom App UI", style: TextStyle(color: Colors.black),),),
        elevation: 4.5,
        actions: [
          Icon(Icons.notifications, color: Colors.black),
          IconButton(icon: Icon(Icons.person,color: Colors.black,), onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
          }),
          Padding(padding: EdgeInsets.only(right: 10),)
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            list(),
            list(),
            list(),
            list(),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ListItem()));
            }, child: Text("Go to Next Screen")),
          ],
        ),
      ),
    );
  }
}

Widget list(){
  return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 1), borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/iphone.jpg"),
                fit: BoxFit.cover
              ),
              borderRadius: BorderRadius.circular(10)
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Container(
              height: 100,
              padding: EdgeInsets.only(top: 4),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text("Iphone 12", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                   Row(children: [Icon(Icons.star, color: Colors.yellow, size: 15,),Text(" 5.0 (23 Review)", style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.w500),),],),
                   Row(children: [Text("20 Pieces", style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.w500),),SizedBox(width: 10,) ,Text("\$90", style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold, fontSize: 15),)],),
                   Text("Quantity: 1", style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.w500),)
                  ],
              ),
            )
          )

        ],
      ),
    );
}



