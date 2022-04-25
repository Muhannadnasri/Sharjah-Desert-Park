import 'package:flutter/material.dart';

import '../theme/color.dart';
import '../widgets/global.dart';
import 'booking.dart';

class DetailChildrenPage extends StatefulWidget {
  @override
  State<DetailChildrenPage> createState() => _DetailChildrenPageState();
}

class _DetailChildrenPageState extends State<DetailChildrenPage> {
  // MovieDetailsPage(this.movie);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: SafeArea(
        child: Container(
          height: 46,
          margin: EdgeInsets.symmetric(vertical: 24, horizontal: 22),
          child: RaisedButton(
            color: appBarColor,
            padding: EdgeInsets.all(15.0),
            elevation: 5,
            textColor: Colors.white,
            child: Text(lang == 1 ? 'Booking' : 'الحجز'),
            onPressed: () {
              // Navigator.pop(context);
              setState(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BookingPage(
                      title: lang != 1
                          ? "مزرعة الاطفال"
                          : "Children's Farm Centre",
                    ),
                  ),
                );
              });
            },
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Texture.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: CustomScrollView(
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
          Text(lang != 1 ? "مزرعة الاطفال" : "Children's Farm Centre",
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
                    'assets/images/childrensfar.jpg',
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
                          lang != 1
                              ? "مزرعة الاطفال"
                              : "Children's Farm Centre",
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
              children: [
                Text(
                  lang != 1 ? "مقدمة" : "Introduction: ",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold),
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
                // Text("• "),
                Expanded(
                  child: Text(lang != 1
                      ? "في شهر مايو 1997 افتتحت مزرعة الأطفال كجزء من منتزه الصحراء في الشارقة، رغبة في تنمية الوعي والمعرفة￼ العلمية والثقافية للطفل، وإعطاء صورة متكاملة عن الحيوانات المحلية المستأنسة، التي تعطي صورة متكاملة عن دورها في حياة الإنسان، إضافة إلى توعية الزوار بأهمية الحيوانات المحلية والعناية بها وتعريفهم بخصائصها ومميزاتها، من خلال أنشطة توعوية وبرامج وورش تقدمها المزرعة.تتيح المزرعة متعة التقرب من الحيوانات والطيور التي تحتويها بشكل مباشر، بإشراف وشرح مفصل من قبل المرشدات التثقيفيات، حيث توفر مزرعة الأطفال تجربة شيقة للأطفال للتعلم عن حيوانات المزرعة وأهميتها للإنسان والبيئة، في إطار ممتع، من خلال أنشطة ترفيهية وورش تقدمها لهم."
                      : "It was opened in May 1997 as a part of Sharjah Desert Park, which is under the Environment and Protected areas Authority. It was established to raise children’s environmental awareness and cultural knowledge, and provide a comprehensive picture of the local domesticated animals. Visitors will also be aware of the importance of local animals and will familiarize them with their characteristics and advantages, through awareness-raising activities, programs and workshops. The farm offers an interesting experience to interact with the   animals   and   birds, under a supervision of guides who provide a detailed explanation."),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  lang != 1 ? "القسم الداخلي" : "The indoor section: ",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold),
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
                // Text("• "),
                Expanded(
                  child: Text(lang != 1
                      ? "يهتم بتنظيم البرامج التعليمية والبيئية، كما يحتوي على مكتبة صغيرة تضم بعض الكتب والقصص والمجلات العلمية والثقافية والبيئية، لتكون مرجعا لطلبة المدارس وزوارالمزرعة، لتنمية ثقافاتهم وتدريبهم على حب الاستطلاع، إضافة إلى ذلك توجد شاشة عرض يتم من خلالها عرض الأفلام الوثائقية والصحية والبيئية."
                      : "Organizes educational and environmental programs, also has a small library which contains reading material such as books and magazines and a screen shows documentaries and environmental films"),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  lang != 1 ? "القسم الخارجي" : "The outdoor section: ",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold),
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
                // Text("• "),
                Expanded(
                  child: Text(lang != 1
                      ? "يضم الحيوانات الأليفة والطيور الداجنة، يهتم هذا القسم بالتفاعل الإيجابي بين الطفل والحيوانات، وذلك من خلال توفير أطعمة خاصة بحيوانات المزرعة، ليتسنى للطفل إطعام الحيوانات، كما وفرت المزرعة مجسما للبقرة ليستطيع الطفل من خلاله الاطلاع على عملية الحلب التقليدية."
                      : "includes live domestic animals: Such as dromedary camels, donkeys, Arabian horses, ponies, cows, goats, sheep, and a number of different kinds of poultry; chickens, Mallard and Muscovy ducks, Grey geese and Indian peafowl. Here, children can interact with the animals in a positive way by feeding them."),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100,
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
