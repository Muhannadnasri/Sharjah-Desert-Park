import 'package:flutter/material.dart';

import '../theme/color.dart';
import '../widgets/global.dart';

class VisitBookingPage extends StatefulWidget {
  @override
  State<VisitBookingPage> createState() => _VisitBookingPageState();
}

class _VisitBookingPageState extends State<VisitBookingPage> {
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
        title: Text(lang == 1 ? " Booking and Visit" : "مواعيد الزيارات ",
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
      body: buildBody(),
    );
  }

  buildBody() {
    return ListView(
      children: [
        SizedBox(
          height: 30,
        ),
        Text(lang != 1 ? "جدول الزيارة" : "Visit Schedule",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 18,
            )),
        Container(
          height: 250,
          width: 700,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(lang != 1
                      ? 'assets/images/TimeAr.jpg'
                      : 'assets/images/Time.jpg'))),
          // child: Image.asset(
          //   'assets/images/Time.jpg',
          //   height: 300,
          //   filterQuality: FilterQuality.high,
          //   width: 600,
          // ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(lang != 1 ? "رسوم الحجز" : "Booking Fees",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 18,
            )),
        Container(
          height: 250,
          width: 700,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(lang != 1
                      ? 'assets/images/BookAr.jpg'
                      : 'assets/images/Book.jpg'))),
          // child: Image.asset(
          //   'assets/images/Time.jpg',
          //   height: 300,
          //   filterQuality: FilterQuality.high,
          //   width: 600,
          // ),
        ),
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
