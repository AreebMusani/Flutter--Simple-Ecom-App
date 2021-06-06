import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white38,
        leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.black,), onPressed: (){
          Navigator.pop(context);
        }),
        title: Center(
          child: Text(
            "Ecom App UI",
            style: TextStyle(color: Colors.black),
          ),
        ),
        elevation: 4.5,
        actions: [
          Icon(Icons.notifications, color: Colors.black),
          Padding(
            padding: EdgeInsets.only(right: 10),
          )
        ],
      ),
      body: SingleChildScrollView(
              child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                    // color: Colors.teal,
                    child: Icon(
                  Icons.person,
                  size: 150,
                )),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Muhammad Areeb Musani",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        softWrap: false,
                      ),
                      Text("areebmusani0@gmail.com",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 13)),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "logout",
                        style: TextStyle(fontWeight: FontWeight.w600,color: Colors.purple, fontSize: 13),
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Text(
                "ACCOUNT INFORMATION",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              title: Text("Full Name"),
              subtitle: Text("Muhammad Areeb Musani"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              title: Text("Email"),
              subtitle: Text("areebmusani0@gmail.com"),
            ),
            ListTile(
              title: Text("Phone"),
              subtitle: Text("+923162240727"),
            ),
            ListTile(
              title: Text("Address"),
              subtitle: Text("Garden West, Karachi, Pakistan"),
            ),
            ListTile(
              title: Text("Gender"),
              subtitle: Text("Male"),
            ),
            ListTile(
              title: Text("Date of Birth"),
              subtitle: Text("December 03, 2001"),
            ),
            
          ],
        ),
      ),
    );
  }
}
