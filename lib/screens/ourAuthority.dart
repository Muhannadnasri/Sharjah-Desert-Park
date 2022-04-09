import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../theme/color.dart';
import '../widgets/global.dart';

class OurAuthorityPage extends StatefulWidget {
  @override
  State<OurAuthorityPage> createState() => _OurAuthorityPageState();
}

class _OurAuthorityPageState extends State<OurAuthorityPage> {
  loadAsset() async {
    String response;
    response = await rootBundle.loadString('assets/html/ourAuthority.txt');
    setState(() {
      data = response;
    });
  }

  String data = '';
  @override
  void initState() {
    super.initState();
    loadAsset();
    // load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }

  Widget getAppBar() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(lang != 1 ? "سلطتنا" : 'OUR AUTHORITY',
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
                    'assets/images/Our Authority.jpg',
                    width: MediaQuery.of(context).size.width,
                    height: 250.0,
                    fit: kIsWeb ? BoxFit.fill : BoxFit.cover,
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
                          lang != 1 ? "سلطتنا" : 'Our Authority',
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
              padding: const EdgeInsets.all(20.0),
              child: Container(
                // height: 300,
                child: Text(data),
              )
              //   Text(
              //     '',
              //     style: TextStyle(
              //       color: Colors.black45,
              //       fontSize: 14.0,
              //     ),
              //   ),
              ),
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
