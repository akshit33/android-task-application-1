import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  var auth = FirebaseAuth.instance;
  String email;
  String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Center(
        child: Container(
          width: 270,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                onChanged: (value) {
                  email = value;
                },
                decoration: InputDecoration(
                    hintText: "Email.....",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                obscureText: true,
                onChanged: (value) {
                  password = value;
                },
                decoration: InputDecoration(
                    hintText: "Enter Password.....",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(height: 10),

              Material(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(10),
                child: MaterialButton(
                  minWidth: 150,
                  height: 40,
                  child: Text("Login"),
                  onPressed: () async {
                    try {
                      var y = await auth.signInWithEmailAndPassword(
                          email: email, password: password);
                      print(password);
                      print(email);
                      print(y);
                      if (y != null) {
                        Navigator.pushNamed(context, "app");
                      }
                    } catch (e) {
                      print(e);
                    }
                    //Navigator.pushNamed(context, "app");
                  },
                ),
              ),
              //Text("submit"),
            ],
          ),
        ),
      ),
    );
  }
}
