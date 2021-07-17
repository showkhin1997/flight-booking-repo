import 'package:flight_booking/display/menu_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.0),
      child: Row(
        children: <Widget>[
          MenuIcon(),
          Spacer(),
          Card(
            //color: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(20.0),
                bottomLeft: Radius.circular(16.0),
                bottomRight: Radius.circular(20.0),
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
                bottomLeft: Radius.circular(13.0),
                bottomRight: Radius.circular(12.0),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
            ),
          ),
        ],
      ),
    );
  }
}
