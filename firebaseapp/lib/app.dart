//import 'dart:html';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'dart:html';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var auth = FirebaseAuth.instance;
  List<String> members = [
    "Akshit",
    "Anurag",
    "Anupam",
    "Anjali",
    "Anushka",
    "Ashutosh",
    "Anuj",
    "Aditya",
    "Arbaz",
    "Arpit",
    "Anil",
    "Avinash",
    "Anand",
  ];

  // get child => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat App"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.close),
              onPressed: () async {
                // print("sign out");
                await auth.signOut();
                Navigator.pushNamed(context, "login");
              }),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu Drawer',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(leading: Icon(Icons.message), title: Text('language')),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      body: ListView.builder(
          itemCount: members.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              // color: Colors.blue[100],
              child: ListTile(
                title: Text(members[index]),
                subtitle: Text(
                  'Active..... ',
                ),
                leading: CircleAvatar(
                  child: Text("A"),
                  // "https://cdn.pixabay.com/photo/2015/06/19/21/24/the-road-815297__340.jpg",
                ),
                trailing: Icon(Icons.add_a_photo),
              ),
            );
          }),
    );
  }
}
