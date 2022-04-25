import 'package:flutter/material.dart';

import '../theme/color.dart';
import '../widgets/global.dart';

class BookingFeesPage extends StatefulWidget {
  @override
  State<BookingFeesPage> createState() => _BookingFeesPageState();
}

class _BookingFeesPageState extends State<BookingFeesPage> {
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
        title: Text(lang == 1 ? " Booking Fees" : "رسوم الحجز",
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
                    // trailing: Text(
                    //   'Sunday',
                    //   style: TextStyle(fontWeight: FontWeight.bold),
                    // ),
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Text(
                        'Individuals and Families ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('•	+13 years, and above is 21 dirhams.'),
                        Text('•	Age group 0-12 is free.'),
                      ],
                    ),
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
                    // trailing: Text(
                    //   'Monday',
                    //   style: TextStyle(fontWeight: FontWeight.bold),
                    // ),
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Text(
                        'Schools and Nurseries',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('•	Each student is 2 dirhams.'),
                        Text('•	Each supervisor is 5 dirhams.'),
                        Text('•	For every 20 students one supervisor is free.'),
                        Text('•	Each guardian 10 dirhams.'),
                      ],
                    ),
                  ),
                  height: 130,
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
                    // trailing: Text(
                    //   'Tuesday',
                    //   style: TextStyle(fontWeight: FontWeight.bold),
                    // ),
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Text(
                        'Higher Education',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('•	Each student is 5 dirhams.'),
                        Text('•	Each supervisor is 10 dirhams.'),
                        Text('•	For every 20 students one supervisor is free.'),
                      ],
                    ),
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
                    // trailing: Text(
                    //   'Wednesday',
                    //   style: TextStyle(fontWeight: FontWeight.bold),
                    // ),
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Text(
                        'Others Parties',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('•	Age group 0-12 is free.'),
                        Text('•	Age group +13 years is 10 dirhams.'),
                      ],
                    ),
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
                    // trailing: Text(
                    //   'Thursday',
                    //   style: TextStyle(fontWeight: FontWeight.bold),
                    // ),
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Text(
                        'Free Entry',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('•	Quran memorization centers'),
                        Text('•	Orphanage'),
                        Text('•	Senior Citizens Care Home (60 years and over)'),
                        Text('•	Care Center for People of Determination'),
                        Text('•	Charity schools'),
                        Text('•	Official delegation (fee-free)'),
                      ],
                    ),
                  ),
                  height: 180,
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
