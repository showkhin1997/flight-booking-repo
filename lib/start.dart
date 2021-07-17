import 'package:flutter/material.dart';

import 'Authentication/login.dart';
import 'Authentication/register.dart';

class start extends StatefulWidget {
  const start({key}) : super(key: key);

  @override
  _startState createState() => _startState();
}

class _startState extends State<start> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.blue[50],
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 60.0,
              ),
              Container(
                height: 400.0,
                // width: 350.0,
                child: Image(
                  image: AssetImage("assets/start.png"),
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              RichText(
                text: TextSpan(
                  text: "Welcome To\n",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: "Airline Reservation",
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlue[700],
                          fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
              Text(
                "Select Your Flight & Easy To Fly",
                style: TextStyle(
                    color: Colors.orange[900],
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic),
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    padding: EdgeInsets.only(left: 30.0, right: 30.0),
                    elevation: 6.0,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WelcomeScreen()));
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.blueAccent,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  RaisedButton(
                    padding: EdgeInsets.only(left: 30.0, right: 30.0),
                    elevation: 6.0,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Register()));
                    },
                    child: Text(
                      "Register",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.blueAccent,
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
