import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../theme/color.dart';
import '../utils/data.dart';
import '../widgets/feature_item.dart';
import '../widgets/global.dart';
import 'booking.dart';

class DetailGardenPage extends StatefulWidget {
  @override
  State<DetailGardenPage> createState() => _DetailGardenPageState();
}

class _DetailGardenPageState extends State<DetailGardenPage> {
  // MovieDetailsPage(this.movie);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  child: Text(lang != 1 ? 'الحجز' : 'Booking'),
                  onPressed: () {
                    // Navigator.pop(context);
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BookingPage(
                            title: lang != 1
                                ? "الحديقة السلامية"
                                : "The Islamic Garden",
                          ),
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
                    'assets/images/botanicalgarden3.jpg',
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
                          lang != 1 ? "الحديقة السلامية" : "The Islamic Garden",
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
                      ? "تحتضن الحديقة الإسلامية ريية إسلامية جوهرية وهي التدبروالتأمل في اآييات القرآنية والتفكرفيما تضمه اآييات من نباتات وربطها بالعلم الحديث. تضم الحديقة 50 نبات ًا مختلف ًا ذكرفي القرآن الكريم، منها: الأثل،￼والسدر، والنخيل، والرمان، والعنب، والتين، والزيتون، والريحان، والكافوروالزنجبيل. و42 نبات ًا ذكرفي السنة النبوية وجميعها تعرض في الحديقة الإسلامية، مثل: الحبة السوداء، والأراك، والزعفران، والصباروالخردل، بالإضافة إلى تصنيفاتها واستخداماتها الطبية، باستثناء نبتتين تم ذكرهما في القرآن والسنة، وهما «الزقوم» وهي شجرة في جهنم، وشجرة «الغرقد» التي ل تزرع إل في فلسطين."
                      : '- The Islamic garden embraces a Fundamental Islamic vision, to meditate on the Quran verses and how it relates to the modern science. The garden contains 50 different plants mentioned in the Quran, including: Tamarisk, Christs thorn, Date palm, Pomegranate, grapes, figs, olives, Sweet basil, Camphor tree and ginger. And 42 plants include in the Hadith and Sunnah, and all are in the Islamic Garden, such as: black cumin, Toothbrush tree, saffron, Aloe and mustard, in addition to their classifications and medical uses, except for two plants mentioned in the Quran and Sunna, namely Alzaqoum, a tree in hell, and the tree of the "Nitraria" which It is only grown in Palestine.'),
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
                      ? "تم تقسيم الحديقة السلامية الى أشجاروشجيرات و أعشاب ولكل صنف نباتات لها خصائص وما يستخدم من النبتة والدليل من القرآن أوالسنة أوكلاهما. "
                      : '- The Islamic botanical garden has been divided into trees, shrubs, and herbs. Each species has plants with characteristics, what’s used from the plant, the religious guide from holy Quran or Sunna or both.'),
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
                      ? 'تبنى صاحب السموالشيخ الدكتورسلطان بن محمد القاسمي " حفظه الله " مشروع الحديقة السلامية مع اليونيسكوعام 2006 وأمربإنشايها بداية عام 2014 ليتم افتتاحها في مارس 2014 تتويجا لعاصمة الثقافة  السلامية.'
                      : '- His highness Sheikh Dr. Sultan bin Mohammed al Qasimi “may god preserve him” adopted the Islamic Garden project in cooperation with UNESCO in 2006, and His highness asked to build first of 2014 to be part of Sharjah Capital of Islamic Culture in 2014.'),
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
                  lang != 1 ? "الأقسام" : "Sections: ",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Text(
                  lang != 1 ? "الستقبال" : "1. Reception: ",
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
                      ? "يضم الستقبال شاشة عرض تسرد نشأة الحديقة وأقسامها وتقسيمات النباتات ومعرض مصغر لبعض النباتات الموجودة فالحديقة وأهميتها وتم تزين الستقبال بصورالنباتات."
                      : 'The reception includes a display screen that Explain the beginning of the garden, and the sections, with divisions of plants, also its shows a small exhibition of the plants and the value of it. And the reception is decorated with some pictures of plants.'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Text(
                  lang != 1 ? "أشجار" : "2. Trees",
                  style: TextStyle(
                      // decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Text(
                  lang != 1 ? "شجيرات" : "3. Shrubs",
                  style: TextStyle(
                      // decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Text(
                  lang != 1 ? "أعشاب" : "4. herbs",
                  style: TextStyle(
                      // decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Text(
                  lang != 1
                      ? "ممررحلةالشتاءوالصيف"
                      : "5. : The Winter and Summer Trip Pass",
                  style: TextStyle(
                      // decoration: TextDecoration.underline,
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
                      ? "مكمل لطريق الحريرحيث كان العرب يتبادلون البضائع في الشتاء من مكة لبلاد الشام وفي الصيف إلى الحبشة بالدليل القرآني كذلك– قسم البحاث الحديثة حيث تم تزويدالمقهى بلوحات النباتات التي لها قيمة طبية والتي تثبت ما جاء في القرآن والسنة –الغرفة التعليمية تضم شاشة عرض لتقديم الورش المختلفة لجميع فئات طلاب المدراس ,أنشطة , فعاليات وبرامج ترفيهية وتثقيفية تعليمية ."
                      : 'Tells about the ancient Arabs trade with the Chinese and Indians and they exchange of goods among them.'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Text(
                  lang != 1 ? "ممر طريق الحرير" : "6. Silk Road corridor: ",
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
                      ? "يحكي عن تجارة العرب قديما مع الصينين والهنود وتبادل البضائع فيما بينهم بالدليل القرآني."
                      : 'Is complementary to the Silk Road, where the Arabs used to exchange goods in winter from Mecca to the Syria and in the summer to Ethiopian coast.'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Text(
                  lang != 1
                      ? "قسم البحاث الحديثة( المقهى)"
                      : "7. Modern Research (the café): ",
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
                      ? "حيث تم تزويد المقهى بلوحات النباتات التي لها قيمة طبية والتي تثبت ما جاء في القرآن والسنة."
                      : 'It is supplied with a range of information about plants that have medicinal value and that prove what was mentioned in the Qur’an and the Sunnah.'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Text(
                  lang != 1 ? "الغرفةالتعليمية" : "8. Educationalroom: ",
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
                      ? "تضم شاشة عرض لتقديم الورش المختلفة لجميع فئات طلاب المدراس ,أنشطة , فعاليات وبرامج ترفيهية و تثقيفية تعليمية ."
                      : 'Includes a display screen to present workshops to school student.'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          getFlower(),
          SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }

  getFlower() {
    List flower = [
      {
        "id": 1,
        "name": "Palm Tree",
        "nameAr": "شجرة النخيل",
        "image": "assets/images/palm tree.png",
      },
      {
        "id": 2,
        "name": "Grapevines",
        "nameAr": "العنب",
        "image": "assets/images/Vitaceae vtis.png",
      },
      {
        "id": 3,
        "name": "Saffron in Jammu and Kashmir",
        "nameAr": "الزعفران في جامو وكشمير",
        "image": "assets/images/Saffron in jammu and kashmir.png",
      },
      {
        "id": 4,
        "name": "Broom Bush",
        "nameAr": "مكنسة بوش",
        "image": "assets/images/Broom Bush.jpg",
      },
      // {
      //   "id": 5,
      //   "name": "Saffron in Jammu and Kashmir",
      //         "nameAr": "مزرعة الاطفال",

      //   "image": "assets/images/Saffron in jammu and kashmir.png",
      // },
    ];

    return CarouselSlider(
        options: CarouselOptions(
          height: 200,
          autoPlay: true,
          enlargeCenterPage: true,
          disableCenter: true,
          viewportFraction: .75,
        ),
        items: List.generate(flower.length,
            (index) => FeatureItem(onTap: () {}, data: flower[index])));
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
