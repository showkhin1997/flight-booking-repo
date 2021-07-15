import 'package:flutter/material.dart';
import 'package:flight_booking/home_page.dart';
import 'package:flight_booking/Authentication/login.dart';
import 'package:framy_annotation/framy_annotation.dart';
import 'display/header.dart';
import 'display/custom_drawer.dart';
import 'display/custom_drawer_guitar.dart';
import 'package:flight_booking/detail-screen.dart';
import 'package:flight_booking/add_flight_screen.dart';
import 'package:flight_booking/testdraw.dart';

void main() {
  runApp(MyApp());
}

@FramyApp(useDevicePreview: true)
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool flip = false;
    Header header = flip ? Header() : Header();
    Widget child = HomePage(header: header);
    if (flip) {
      child = CustomGuitarDrawer(child: child);
    } else {
      child = CustomDrawer(child: child);
    }
    return MaterialApp(
      title: 'Just Fly',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ).copyWith(
        pageTransitionsTheme: PageTransitionsTheme(
            builders: <TargetPlatform, PageTransitionsBuilder>{
              TargetPlatform.android: ZoomPageTransitionsBuilder(),
            }),
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        HomePage.id: (context) => child,
        DetailScreen.id: (context) => DetailScreen(),
        AddFlightScreen.id: (context) => AddFlightScreen(),
        TestDraw.id: (context) => TestDraw(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
