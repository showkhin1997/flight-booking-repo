import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flight_booking/constants.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'display/plane_curve.dart';

class FlightPageView extends StatefulWidget {
  @override
  _FlightPageViewState createState() => _FlightPageViewState();
}

class _FlightPageViewState extends State<FlightPageView> {
  final Widget svgImage = SvgPicture.asset(
    '#',
    color: kFloatingButton,
    height: 60.0,
  );

  @override
  Widget build(BuildContext context) {
    bool changeCardColor = false;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 20.0),
          height: 70.0,
          child: ListView(
            // This next line does the trick.
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              flightDays(day: 'TUE', dayNum: '16', isclick: false),
              flightDays(day: 'WED', dayNum: '17', isclick: false),
              flightDays(day: 'THU', dayNum: '18', isclick: false),
              flightDays(day: 'FRI', dayNum: '19', isclick: true),
              flightDays(day: 'SAT', dayNum: '20', isclick: false),
              flightDays(day: 'Sun', dayNum: '21', isclick: false),
              flightDays(day: 'MON', dayNum: '22', isclick: false),
              flightDays(day: 'TUE', dayNum: '23', isclick: false),
              flightDays(day: 'WED', dayNum: '24', isclick: false),
              flightDays(day: 'THU', dayNum: '25', isclick: false),
              flightDays(day: 'FRI', dayNum: '26', isclick: false),
              flightDays(day: 'SAT', dayNum: '27', isclick: false),
            ],
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.01),
        Padding(
          padding: EdgeInsets.only(left: 25.0, bottom: 10.0),
          child: Text(
            'Two Flights are available DHK to SYL.',
            style: TextStyle(color: Colors.white),
          ),
        ),
        // SizedBox(height: 10.0),
        Expanded(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              GestureDetector(
                  onTap: () => changeCardColor = !changeCardColor,
                  child: card(svgImage, changeCardColor)),
              GestureDetector(
                  onTap: () => changeCardColor = !changeCardColor,
                  child: card(svgImage, changeCardColor)),
            ],
          ),
        ),
      ],
    );
  }

  Card card(Widget svgEmiratesImage, bool changeCardColor) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
      color: changeCardColor == true ? kTextColor : Colors.deepPurple,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
        side: BorderSide(color: Colors.white, width: 0.5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'DHK',
                        style: changeCardColor == true
                            ? kCardMainText
                            : kCardMainText2,
                      ),
                      Text(
                        'Dhaka',
                        style: changeCardColor == true
                            ? kCardSubText
                            : kCardSubTextWhite,
                      ),
                      SizedBox(height: 28.0),
                      Text(
                        'DATE',
                        style: kCardSub2,
                      ),
                      Text(
                        'MAY 19',
                        style: changeCardColor == true
                            ? kCardSubText
                            : kCardSubTextWhite,
                      ),
                    ],
                  ),
                ),
                Column(
                  children: <Widget>[
                    CustomPaint(
                      painter: PlaneCurved(
                          bodyColor: changeCardColor == true
                              ? kMainColor
                              : Colors.white,
                          width: 0.4),
                      child: Container(
                        //height: 0.0,
                        width: 48.0,
                        child: Icon(
                          Entypo.aircraft_take_off,
                          color: changeCardColor == true
                              ? kMainColor
                              : Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      '1h 35m, 8:35 AM',
                      style: kCardSub2,
                    ),
                  ],
                ),
                //Spacer(),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'SYL',
                        style: changeCardColor == true
                            ? kCardMainText
                            : kCardMainText2,
                      ),
                      Text(
                        'Sylhet',
                        style: changeCardColor == true
                            ? kCardSubText
                            : kCardSubTextWhite,
                      ),
                      SizedBox(height: 28.0),
                      Text(
                        'FLIGHT NO',
                        style: kCardSub2,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          'K876',
                          style: changeCardColor == true
                              ? kCardSubText
                              : kCardSubTextWhite,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            Divider(
              color: Colors.white,
              thickness: 0.4,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    cardPadding(
                        left: 0.0,
                        color: Colors.black,
                        icon: Ionicons.logo_apple,
                        iconColor: Colors.white),
                    cardPadding(
                        left: 20.0,
                        color: Colors.black87,
                        icon: Ionicons.ios_color_filter,
                        iconColor: Colors.red),
                    cardPadding(
                        left: 40.0,
                        color: Colors.black,
                        icon: Ionicons.md_megaphone,
                        iconColor: Colors.white),
                  ],
                ),
                Spacer(),
                Text('Ticket Price', style: kTextStyle),
                Padding(
                  padding: const EdgeInsets.only(left: 7.0, right: 3.0),
                  child: Text('৳',
                      style: changeCardColor == true
                          ? kCardMainText
                          : kCardMainText2),
                ),
                Text('3500.00',
                    style: changeCardColor == true
                        ? kCardMainText
                        : kCardMainText2),
              ],
            )
          ],
        ),
      ),
    );
  }

  Padding cardPadding(
      {double left, Color color, IconData icon, Color iconColor}) {
    return Padding(
      padding: EdgeInsets.only(left: left),
      child: Container(
        height: 30.0,
        width: 30.0,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(
            width: 1,
            color: Colors.white,
          ),
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
            bottom: Radius.circular(20),
          ),
        ),
        child: Icon(icon, size: 17.0, color: iconColor),
      ),
    );
  }

  Widget flightDays(
      {@required String day, @required String dayNum, bool isclick}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 6.0),
      width: 50.0,
      padding: EdgeInsets.symmetric(vertical: 6.5),
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border.all(
          width: isclick ? 0 : 1,
          color: kTextColor.withOpacity(0.2),
        ),
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(10),
          bottom: Radius.circular(10),
        ),
        boxShadow: isclick
            ? [
                BoxShadow(
                  color: kMainColor.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 6,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ]
            : null,
      ),
      child: Column(
        children: [
          Text(day, style: isclick ? kScrollTabClicked : kScrollTabText),
          Text(
            dayNum,
            style: isclick ? kScrollTabClicked : kScrollTabText2,
            textScaleFactor: 1.8,
          ),
        ],
      ),
    );
  }
}
