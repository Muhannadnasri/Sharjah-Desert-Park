import 'package:flutter/material.dart';

import '../theme/color.dart';
import '../widgets/global.dart';
import 'booking.dart';

class DetailWildlifePage extends StatefulWidget {
  @override
  State<DetailWildlifePage> createState() => _DetailWildlifePageState();
}

class _DetailWildlifePageState extends State<DetailWildlifePage> {
  // MovieDetailsPage(this.movie);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomSheet: Container(
          color: Colors.white,
          height: 80,
          // alignment: Alignment.bottomCenter,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  height: 40,
                  width: MediaQuery.of(context).size.width - 20,
                  child: RaisedButton(
                    color: appBarColor,
                    textColor: Colors.white,
                    child: Text(lang == 1 ? 'Booking' : 'الحجز'),
                    onPressed: () {
                      // Navigator.pop(context);
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BookingPage(),
                          ),
                        );
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
          // child:
        ),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: appBarColor,
              pinned: true,
              snap: true,
              foregroundColor: Colors.black,
              floating: true,
              title: getAppBar(),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => buildBody(),
                childCount: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getAppBar() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
              lang == 1
                  ? "Arabia's Wildlife Centre"
                  : "حيوانات شبه الجزيرة العربية",
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              )),
        ],
      ),
    );
  }

  buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 50.0),
                child: ClipPath(
                  clipper: ArcClipper(),
                  child: Image.asset(
                    "assets/images/img_4034.jpg",
                    width: MediaQuery.of(context).size.width,
                    height: 250.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 0.0,
                left: 16.0,
                right: 16.0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          lang == 1
                              ? "Arabia's Wildlife Centre"
                              : "حيوانات شبه الجزيرة العربية ",
                          style: TextStyle(fontSize: 25),
                        ),
                      ],
                    )),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Icon(Icons.bulle),
                Text("• "),
                Expanded(
                  child: Text(lang == 1
                      ? 'Arabian Wildlife Center was opened on September 30, 1999 by His Highness Sheikh Dr. Sultan bin Muhammad Al Qasimi, Member of the Supreme Council and Ruler of Sharjah. It is considered the first learning center to be opened within the framework of a protected area in the UAE.'
                      : "افتتح مركز حيوانات شبه الجزيرة العربية في 30 سبتمبر 1999م من قبل سمو الشيخ الدكتور سلطان بن محمد القاسمي عضو المجلس الأعلى حاكم الشارقة، ويعتبر أول مركز تعلم يفتتح في إطار محمية في دولة الإمارات"),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Icon(Icons.bulle),
                Text("• "),
                Expanded(
                  child: Text(lang == 1
                      ? 'The Arabian Wildlife Center provides an opportunity to discover the amazing diversity of animals in the Arabian Peninsula, which is home to the largest group of wild animals in the Arab world, and is also home to many species that have become extinct in the Arabian Peninsula.'
                      : "ويوفر مركز حيوانات شبه الجزيرة العربية فرصة لاكتشاف التنوع المدهش لحيوانات شبه الجزيرة العربية، والذي يعتبر موطن لأكبر مجموعة من الحيوانات البرية في العالم العربي، وهو أيض ًا موطن للعديد من الأنواع التي انقرضت في شبه الجزيرة العربي"),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Icon(Icons.bulle),
                Text("• "),
                Expanded(
                  child: Text(lang == 1
                      ? 'The center is an ideal destination to visit even in the summer, as the animals are displayed in their natural habitats, along with educational panels that display basic information about the species, in addition to the presence of guides to guide visitors and students. Many events and workshops are also held throughout the year.'
                      : "يعتبر المركز وجهة مثالية للزيارة حتى في فصل الصيف ، ويتم فيه عرض الحيوانات في بيئاتها الطبيعية إلى جانب وجود لوحات تعليمية تعرض معلومات أساسية عن الأنواع المعروضة، بالإضافة إلى وجود مرشدين لإرشاد الزوار وطلبة المدارس. كما تقام أيض ًا العديد من الفعاليات والورش على مدار العام ."),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Icon(Icons.bulle),
                Text("• "),
                Expanded(
                  child: Text(lang == 1
                      ? 'The center is divided into five sections:'
                      : "وينقسم المركز إلى خمسة أقسام هي :"),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Icon(Icons.bulle),
                Text("- "),
                Expanded(
                  child: Text(lang == 1 ? 'Reptiles section' : "قسم الزواحف،"),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Icon(Icons.bulle),
                Text("- "),
                Expanded(
                  child: Text(lang == 1 ? 'Birds section' : "قسم الطيور"),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Icon(Icons.bulle),
                Text("- "),
                Expanded(
                  child: Text(lang == 1
                      ? 'Night animals section'
                      : "قسم الحيوانات الليلية"),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Icon(Icons.bulle),
                Text("- "),
                Expanded(
                  child: Text(lang == 1
                      ? 'Open garden section'
                      : "قسم الحديقة المفتوحة"),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Icon(Icons.bulle),
                Text("- "),
                Expanded(
                  child: Text(lang == 1
                      ? 'Wild animals section'
                      : "قسم الحيوانات البرية"),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100,
          )
        ],
      ),
    );
  }
}

class ArcClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 30);

    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstPoint = Offset(size.width / 2, size.height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstPoint.dx, firstPoint.dy);

    var secondControlPoint = Offset(size.width - (size.width / 4), size.height);
    var secondPoint = Offset(size.width, size.height - 30);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondPoint.dx, secondPoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
