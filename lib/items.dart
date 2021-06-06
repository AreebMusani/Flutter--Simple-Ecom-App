import 'package:basicapp/profile.dart';
import 'package:flutter/material.dart';

class ListItem extends StatefulWidget {
  @override
  _ListItemState createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white38,
          title: Center(
            child: Text(
              "Ecom App UI",
              style: TextStyle(color: Colors.black),
            ),
          ),
          elevation: 4.5,
          actions: [
            Icon(Icons.notifications, color: Colors.black),
            IconButton(icon: Icon(Icons.person,color: Colors.black,), onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
            }),
            Padding(
              padding: EdgeInsets.only(right: 10),
            )
          ],
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                  labelText: 'UserName',
                  hintText: 'Enter UserName',
                  contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 15),
                      child: Text(
                        "History",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ),
                    listView(),
                    listView(),
                    listView(),
                    listView(),
                    listView(),
                    listView(),
                    listView(),
                    listView(),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

Widget listView() {
  return ListTile(
    dense: true,
    contentPadding: EdgeInsets.only(left: 0.0, right: 0.0),
    minLeadingWidth: 20,
    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
    leading: CircleAvatar(
      backgroundImage: AssetImage("assets/iphone.jpg"),
      radius: 17,
    ),
    title: Text(
      "Iphone 12",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
    ),
    subtitle: Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.yellow,
          size: 15,
        ),
        Text(
          " 5.0 (23 Review)",
          style: TextStyle(
              fontSize: 12, color: Colors.grey, fontWeight: FontWeight.w500),
        ),
      ],
    ),
    trailing: Text("\$10"),
  );
}
