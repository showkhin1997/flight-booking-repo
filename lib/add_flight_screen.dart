import 'package:flutter/material.dart';
import 'package:flight_booking/constants.dart';
import 'display/title.dart';
import 'package:flight_booking/display/select_bar.dart';
import 'package:flight_booking/Route_page.dart';
import 'package:flight_booking/flight_pageview.dart';
import 'package:flight_booking/seat_page.dart';
import 'package:flight_booking/checkout_page.dart';

class AddFlightScreen extends StatefulWidget {
  static const String id = 'add_flight_screen';
  @override
  _AddFlightScreenState createState() => _AddFlightScreenState();
}

class _AddFlightScreenState extends State<AddFlightScreen> {
  PageController _pageController;
  static const _kDuration = const Duration(milliseconds: 300);
  static const _kCurve = Curves.ease;
  int currentIndex = 0;

  bool show = true;

  onChangeFunction(int index) {
    setState(() {
      currentIndex = index;
    });
    if (currentIndex == 1) {
      show = false;
      return;
    } else {
      show = true;
    }
  }

  nextFunction() {
    _pageController.nextPage(duration: _kDuration, curve: _kCurve);
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                BuildHead(),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                Align(
                    alignment: Alignment(-0.9, 0),
                    child: HeadTitle(title: 'Add flight')),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.blue[900],
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(32),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.06),
                        Tabs(currentIndex: currentIndex),
                        Expanded(
                          child: PageView(
                            controller: _pageController,
                            onPageChanged: onChangeFunction,
                            children: <Widget>[
                              RoutePage(),
                              FlightPageView(),
                              SeatPage(),
                              CheckOutPage(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: show
          ? Padding(
              padding: const EdgeInsets.only(right: 30.0, bottom: 5.0),
              child: FloatingActionButton(
                child: Icon(
                  Icons.chevron_right_outlined,
                  size: 35.0,
                  color: Colors.black,
                ),
                onPressed: () => nextFunction(),
                tooltip: 'Add new tasks',
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16.0),
                    topRight: Radius.circular(16.0),
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                  ),
                ),
                backgroundColor: kFloatingButton,
              ),
            )
          : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
    );
  }
}

class BuildHead extends StatelessWidget {
  const BuildHead({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.0),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () => Navigator.pop(context),
            color: Colors.blue,
            iconSize: 30.0,
          ),
          Spacer(),
          Card(
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
