import 'package:flutter/material.dart';

class TestDraw extends StatelessWidget {
  static const String id = 'testdraw';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.elliptical(200.0, 800.0),
                      topRight: Radius.elliptical(200, 800.0)),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.8,
                    width: MediaQuery.of(context).size.width * 0.7,
                    color: Colors.deepOrangeAccent,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
