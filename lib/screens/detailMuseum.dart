import 'package:flutter/material.dart';

import '../theme/color.dart';
import '../widgets/global.dart';
import 'booking.dart';

class DetailMuseumPage extends StatefulWidget {
  @override
  State<DetailMuseumPage> createState() => _DetailMuseumPageState();
}

class _DetailMuseumPageState extends State<DetailMuseumPage> {
  // MovieDetailsPage(this.movie);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SafeArea(
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
                      title: lang == 1
                          ? "Natural History and Botanical Museum"
                          : "متحف التاريخ الطبيعي و النباتي",
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
          Expanded(
            child: Text(
                lang == 1
                    ? "Natural History and Botanical Museum"
                    : "متحف التاريخ الطبيعي و النباتي",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                )),
          ),
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
                padding: const EdgeInsets.only(bottom: 70.0),
                child: ClipPath(
                  clipper: ArcClipper(),
                  child: Image.asset(
                    'assets/images/Natural History and Botanical Museum.jpg',
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
                              ? "Natural History and Botanical Museum"
                              : "متحف التاريخ الطبيعي و النباتي",
                          style: TextStyle(fontSize: 25),
                        ),
                      ],
                    )),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  lang == 1 ? "Introduction: " : "مقدمة",
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
                  child: Text(lang == 1
                      ? "The Natural History Museum was opened in November 1995 by His Highness Sheikh Dr. Sheikh Sultan bin Muhammad Al Qasimi. The museum is a distinguished educational and entertaining landmark, provides people with an opportunity to get to know the history of the globe and natural life. In March 2008, His Highness opened an addition to the Natural History Museum that is the Botanical Museum, which is considered the first of its kind in the Middle East. The Natural History and botanical Museum is one of the most important centers of the Desert Park and the Environment and protected areas authority. It is an attractive center for a large number of visitors, researchers and those interested in the environmental field."
                      : "افتتح صاحب السمو الشيخ الدكتور الشيخ سلطان بن محمد القاسمي حفظه الله متحف التاريخ الطبيعي والنباتي في نوفمبر 1995 م و الذي يعتبر معلماً مميزاً تعليميًا ترفيهيًا يوفر للناس فرصة التعرف على تاريخ الكرة الأرضية و الحياة الطبيعية، و في مارس 2008 م افتتح سموه إضافة لمتحف التاريخ التاريخ الطبيعي ألا و هو المتحف النباتي و الذي يعتبر الأول من نوعه في الشرق الأوسط، و يعتبر متحف التاريخ الطبيعي و النباتي من أهم مراكز منتزه الصحراء التابعة لهيئة البيئة و المحميات الطبيعية و التي تعد مركزاً جاذباً لعدد كبير من الزوار و الباحثين و المهتمين في المجال البيئي."),
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
                  lang == 1
                      ? "Journey through Sharjah: "
                      : "رحلة عبر إمارة الشارقة",
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
                  child: Text(lang == 1
                      ? "At this section you can see a diorama of the emirates of Sharjah that shows the different topography of Sharjah starting from gulf of Oman in the east to the Arabian Gulf in the west. Its length is about 35m but in real 210 km. Sharjah is the only emirate overlooking two coasts, the Gulf of Oman coast to the east and the Arabian Gulf to the west. One of Sharjah's most important terrains and natural environments are: coasts, mangroves, mountains and valleys, gravel plains, deserts.... etc"
                      : "بدايتنا ستكون من القسم الأول من المتحف والذي يحمل عنوان رحلة عبر إمارة الشارقة، نحن الآن نقف أما مجسم يمثل تضاريس وبيئات إمارة الشارقة من الشرق إلى الغرب، يبلغ طوله 35 متر وفي الطبيعة 210 كم، وتعد الشارقة هي الإمارة الوحيدة التي تطل على ساحلين ، ساحل خليج عمان شرقا والخليج العربي غربا.الآن أريد منكم ألقاء نظرة سريعة على المجسم ومحاولة ذكر بعضا من هذه البيئات؟؟؟ من أهم التضاريس والبيئات الطبيعية لإمارة الشارقة: السواحل، أشجار المنجروف، الجبال والوديان، السهول الحصوية، الصحاري....الخ"),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Text(
                  lang == 1 ? "1. FirstIsland" : "الساحل الشرقي",
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
                  lang == 1
                      ? "2. Deserts of the World."
                      : "السهل الشرقي أو سهل",
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
                  lang == 1 ? "3. ArabianDesert." : "الجبال",
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
                  lang == 1 ? "4. ShadowofRain." : "الحياة في الجبال",
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
                  lang == 1 ? "5. SandDunes." : "الودي",
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
                  lang == 1 ? "6. TypesofSandDunes." : "الواحة",
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
                  lang == 1 ? "7. SecondIsland" : " السهول الحصوية",
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
                  lang == 1 ? "8. Camels" : "آثار على الرمال",
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
                  lang == 1 ? "9. WalkingonSand" : "الصحراء",
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
                  lang == 1
                      ? "10. Third Island – Conserving Body temperature"
                      : "السبخة",
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
                  lang == 1
                      ? "11. Shape of Bodies"
                      : "التاريخ الطبيعي الإسلامي",
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
                  lang == 1 ? "12. Hide" : "العلوم الطبيعية الإسلامية",
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
                  lang == 1
                      ? "13. Sheltering in the Shadow"
                      : "العلوم الطبيعية العملي",
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
                  lang == 1
                      ? "14. Isolation"
                      : "مركز الحيوانات البرية العربية.",
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
              children: [
                Text(
                  lang != 1 ? "حياة الصحراء" : "The Desert Life: ",
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
                  lang != 1 ? "الجزيرة الأولى" : "1. East Coast.",
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
                      ? "صحاري العالم"
                      : "2. Eastern Plain or Al-Ghail Pain.",
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
                  lang != 1 ? "الصحراء العربية" : "3. Mountains",
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
                  lang != 1 ? "ظل المطر" : "4. Life in Mountains",
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
                  lang != 1 ? "الكثبان الرملية" : "5. Valley.",
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
                  lang != 1 ? "أنواع الكثبان الرملية" : "6. Oasis",
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
                  lang != 1 ? "الجزيرة الثانية" : "7. Gravel Plains",
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
                  lang != 1 ? "الجمال" : "8. Effects on sand",
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
                  lang != 1 ? "السير على الرمال" : "9. Desert.",
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
                      ? " الجزيرة الثالثة - الحفاظ على حرارة الجسم"
                      : "10. Mud plains.",
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
                  lang != 1 ? "شكل الأجسام" : "11. Islamic Natural history",
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
                      ? "الاختباء"
                      : "12. Islamic Natural Sciences that includes:",
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
                      ? "الاحتماء في الظل"
                      : "13. Practical Natural Sciences",
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
                  lang != 1 ? "العزل" : "14. Arabian Wild Animals center",
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
              children: [
                Text(
                  lang != 1 ? "رحـلة عـبر الزمــن" : "Journey Through Time: ",
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
                      ? "هذا القسم كله يحكي قصة نشأة الأرض منذ ملايين السنين وحتى وقتنا الحاضر ويركز على الأحقاب الجيولوجية المختلفة التي مرت على كوكب الأرض والكون والمجرات والنجوم وكيفية تكون الصخور بأنواعها ."
                      : "This whole section tells the story of the genesis of the Earth millions of years ago till the present day. It focuses on the various stages of geological changes that have passed on the planet, the universe, galaxies, stars and how all kinds of rocks had been formed."),
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
                  lang != 1 ? "العالم الحي" : "The Living World: ",
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
              children: [
                Text(
                  lang != 1 ? "المملكة الخفية" : "Invisible Kingdom: ",
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
                      ? "هي الكائنات الحية التي لاترى بالعين المجردة بل نشاهدها عن طريق المجهر مثل البكتيريا والفيروسات والأوليات"
                      : "Includes the living species that cannot be seen by naked eyes but just seen under the microscope like bacteria, viruses etc."),
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
                  lang != 1 ? "المملكة الظــــــــاهـرة" : "Visible Kingdom: ",
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
                  lang != 1 ? "الزواحف" : "1. Reptiles",
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
                  lang != 1 ? "الطيور" : "2. Birds",
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
                  lang != 1 ? "الثدييات" : "3. Mammals",
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
                  lang != 1 ? "المفصليات" : "4. Arthropods",
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
                  lang != 1 ? "البرمائيات" : "5. Amphibians",
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
                  lang != 1 ? "الفقاريات" : "6. Vertebrates",
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
                  lang != 1 ? "اللافقاريات" : "7. Invertebrates",
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
              children: [
                Text(
                  lang != 1
                      ? "بحـــــــــــار الشـــــارقة الحية"
                      : "Sharjah’s Living Seas: ",
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
                      ? "يبحر هذا القسم في أعماق البحار ليسلط الضوء على الكائنات البحرية في الإمارة كما تم تمديد القسم إلى ممر لأسماك الخليج ويحوي على أكثر من 30 مجسم لهذه الأسماك."
                      : "This section displays most of marine organisms in the seas of Sharjah. This section had been developed and extended to include more than 30 models for the different kinds of Arabian Gulf Fish species."),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
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
