import 'package:flutter/material.dart';

import '../theme/color.dart';
import '../widgets/global.dart';

class VisitTimePage extends StatefulWidget {
  @override
  State<VisitTimePage> createState() => _VisitTimePageState();
}

class _VisitTimePageState extends State<VisitTimePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        foregroundColor: Colors.black,
        title: Text(lang == 1 ? "Visiting Time" : "مواعيد الزيارات ",
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.w500,
              fontSize: 18,
            )),
        elevation: 0.0,

        // bottom: TabBar(
        //   controller: tabController,
        //   tabs: [
        //     Tab(
        //       //icon: Icon(Icons.home_filled),
        //       text: 'lll',
        //     ),
        //     Tab(
        //       icon: Icon(Icons.home_filled),
        //       //text: 'lll',
        //     ),
        //     Tab(
        //       icon: Icon(Icons.home_filled),
        //       text: 'lll',
        //     )
        //   ],
        // ),
      ),
      body: Container(
        child: buildBody(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Texture.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  buildBody() {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.transparent),
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: Card(
              elevation: 10,
              child: ClipPath(
                child: Container(
                  child: ListTile(
                    // leading: Container,
                    contentPadding: const EdgeInsets.all(8.0),
                    isThreeLine: true,
                    trailing: Text(
                      'Sunday',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Row(
                        children: [
                          Icon(Icons.calendar_month_outlined),
                          Text(
                            ' 9:00 a.m. to 5:30 p.m',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    subtitle: Text(
                        'Female student preferences during the morning and evening period for both genders.'),
                  ),
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(color: Colors.green, width: 5),
                      right: BorderSide(color: Colors.green, width: 5),
                    ),
                  ),
                ),
                clipper: ShapeBorderClipper(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3))),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.transparent),
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: Card(
              elevation: 10,
              child: ClipPath(
                child: Container(
                  child: ListTile(
                    // leading: Container,
                    contentPadding: const EdgeInsets.all(8.0),
                    isThreeLine: true,
                    trailing: Text(
                      'Monday',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Row(
                        children: [
                          Icon(Icons.calendar_month_outlined),
                          Text(
                            ' 9:00 a.m. to 5:30 p.m',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    subtitle: Text(
                        'Male students, Female students and mixed groups during both the morning and evening time'),
                  ),
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(color: Colors.green, width: 5),
                      right: BorderSide(color: Colors.green, width: 5),
                    ),
                  ),
                ),
                clipper: ShapeBorderClipper(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3))),
              ),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.transparent),
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: Card(
              elevation: 10,
              child: ClipPath(
                child: Container(
                  child: ListTile(
                    // leading: Container,
                    contentPadding: const EdgeInsets.all(8.0),
                    isThreeLine: true,
                    trailing: Text(
                      'Tuesday',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Row(
                        children: [
                          Icon(Icons.calendar_month_outlined),
                          Text(
                            ' Closed',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    subtitle: Text(
                        'All Centers of the desert park are closed for maintenance'),
                  ),
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(color: Colors.red, width: 5),
                      right: BorderSide(color: Colors.red, width: 5),
                    ),
                  ),
                ),
                clipper: ShapeBorderClipper(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3))),
              ),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.transparent),
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: Card(
              elevation: 10,
              child: ClipPath(
                child: Container(
                  child: ListTile(
                    // leading: Container,
                    contentPadding: const EdgeInsets.all(8.0),
                    isThreeLine: true,
                    trailing: Text(
                      'Wednesday',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Row(
                        children: [
                          Icon(Icons.calendar_month_outlined),
                          Text(
                            ' 9:00 a.m. to 5:30 p.m',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    subtitle: Text(
                        'Male students, Female students and mixed groups during both the morning and evening time'),
                  ),
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(color: Colors.green, width: 5),
                      right: BorderSide(color: Colors.green, width: 5),
                    ),
                  ),
                ),
                clipper: ShapeBorderClipper(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3))),
              ),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.transparent),
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: Card(
              elevation: 10,
              child: ClipPath(
                child: Container(
                  child: ListTile(
                    // leading: Container,
                    contentPadding: const EdgeInsets.all(8.0),
                    isThreeLine: true,
                    trailing: Text(
                      'Thursday',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Row(
                        children: [
                          Icon(Icons.calendar_month_outlined),
                          Text(
                            ' 9:00 a.m. to 5:30 p.m',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    subtitle: Text(
                        'Female student preferences during the morning and evening period for both genders'),
                  ),
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(color: Colors.green, width: 5),
                      right: BorderSide(color: Colors.green, width: 5),
                    ),
                  ),
                ),
                clipper: ShapeBorderClipper(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3))),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.transparent),
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: Card(
              elevation: 10,
              child: ClipPath(
                child: Container(
                  child: ListTile(
                    // leading: Container,
                    contentPadding: const EdgeInsets.all(8.0),
                    isThreeLine: true,
                    trailing: Text(
                      'Friday',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Row(
                        children: [
                          Icon(Icons.calendar_month_outlined),
                          Text(
                            ' 2:00 pm to 5:30 pm',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    subtitle: Text('Mixed groups'),
                  ),
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(color: Colors.green, width: 5),
                      right: BorderSide(color: Colors.green, width: 5),
                    ),
                  ),
                ),
                clipper: ShapeBorderClipper(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3))),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.transparent),
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: Card(
              elevation: 10,
              child: ClipPath(
                child: Container(
                  child: ListTile(
                    // leading: Container,
                    contentPadding: const EdgeInsets.all(8.0),
                    isThreeLine: true,
                    trailing: Text(
                      'Saturday',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Row(
                        children: [
                          Icon(Icons.calendar_month_outlined),
                          Text(
                            ' 11:00 am to 5:30 pm',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    subtitle: Text('Mixed groups'),
                  ),
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(color: Colors.green, width: 5),
                      right: BorderSide(color: Colors.green, width: 5),
                    ),
                  ),
                ),
                clipper: ShapeBorderClipper(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3))),
              ),
            ),
          ),
        ),
        // SizedBox(
        //   height: 30,
        // ),
        // Text(lang != 1 ? "جدول الزيارة" : "Visit Schedule",
        //     textAlign: TextAlign.center,
        //     style: TextStyle(
        //       color: Colors.black,
        //       fontWeight: FontWeight.w500,
        //       fontSize: 18,
        //     )),
        // Container(
        //   height: 250,
        //   width: 700,
        //   decoration: BoxDecoration(
        //       image: DecorationImage(
        //           image: AssetImage(lang != 1
        //               ? 'assets/images/TimeAr.jpg'
        //               : 'assets/images/Time.jpg'))),
        //   // child: Image.asset(
        //   //   'assets/images/Time.jpg',
        //   //   height: 300,
        //   //   filterQuality: FilterQuality.high,
        //   //   width: 600,
        //   // ),
        // ),
        // SizedBox(
        //   height: 10,
        // ),
        // Text(lang != 1 ? "رسوم الحجز" : "Booking Fees",
        //     textAlign: TextAlign.center,
        //     style: TextStyle(
        //       color: Colors.black,
        //       fontWeight: FontWeight.w500,
        //       fontSize: 18,
        //     )),
        // Container(
        //   height: 250,
        //   width: 700,
        //   decoration: BoxDecoration(
        //       image: DecorationImage(
        //           image: AssetImage(lang != 1
        //               ? 'assets/images/BookAr.jpg'
        //               : 'assets/images/Book.jpg'))),
        //   // child: Image.asset(
        //   //   'assets/images/Time.jpg',
        //   //   height: 300,
        //   //   filterQuality: FilterQuality.high,
        //   //   width: 600,
        //   // ),
        // ),
      ],
    );
  }

  Widget getAppBar() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(lang != 1 ? "الحديقة السلامية" : "The Islamic Garden",
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              )),
        ],
      ),
    );
  }
}
