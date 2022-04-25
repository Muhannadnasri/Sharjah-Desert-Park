import 'dart:math';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../theme/color.dart';
import '../widgets/button_widget.dart';
import '../widgets/global.dart';

class AnimalsPage extends StatefulWidget {
  @override
  _AnimalsPageState createState() => new _AnimalsPageState();
}

var COLORS = [
  Color(0xFFEF7A85),
  Color(0xFFFF90B3),
  Color(0xFFFFC2E2),
  Color(0xFFB892FF),
  Color(0xFFB892FF)
];

class _AnimalsPageState extends State<AnimalsPage> {
  // ignore: non_constant_identifier_names
  late VideoPlayerController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _controller =
    //     VideoPlayerController.asset("assests/videos/Desert Monitor.mp4")
    //       ..initialize().then(
    //         (_) {
    //           // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
    //           setState(() {});
    //         },
    //       );
    // _controller = VideoPlayerController.network(
    //     'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
    //   ..initialize().then((_) {
    //     // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
    //     setState(() {});
    //   });
  }

  List data = [
    {
      "title": "Desert Monitor",
      "titleAR": "مراقب الصحراء ",
      "contentAR":
          "أكبر سحلية وأكثرها عدوانية في شبه الجزيرة العربية ، يصل طولها إلى 1.2 متر. يشكل جسد السحلية ثلث إجمالي طوله والباقي يتكون من ذيل يشبه السوط. ",
      "content":
          "The largest and most aggressive lizard in the Arabian Peninsula, Reaching a length of 1.2 m. The body of lizard makes up one third Of its total length and the rest consists of a whip-like tail.",
      "color": COLORS[new Random().nextInt(5)],
      "image": "assets/images/Desert Monitor.jpg",
      "video": "assests/videos/Desert Monitor.mp4"
    },
    {
      "title": "Arabian leopard",
      "titleAR": "النمر العربي",
      "contentAR":
          "من أهم الحيوانات المفترسة في شبه الجزيرة العربية ، وتعتبر من الأنواع المهددة بالانقراض بسبب الصيد وفقدان الموائل. تشير التقديرات إلى أن أقل من 200 فرد يعيشون في البرية. تعتبر الأنواع العربية من النمر في المتوسط أصغر من السافانا التي تسكن نمور إفريقيا. ",
      "content":
          "One of the most important predators in the Arabian Peninsula, considered as endangered species due to hunting and habitat loss. it is estimated that less than 200 individuals survive in the wild. The Arabian sup-species of the leopard is on average smaller than savanna inhabiting leopards of Africa.",
      "color": COLORS[new Random().nextInt(5)],
      "image": "assets/images/Arabian leopard.jpg",
      "video": ""
    },
    {
      "title": "Hamadryads Sacred Baboon",
      "titleAR": "حمدريادس البابون المقدس ",
      "contentAR":
          "من الشائع إلى حد ما ، أن هناك أكثر من 350.000 منهم في منطقة عسير بالمملكة العربية السعودية. الذكر الوحيد يحتفظ بـ 1 و 3 إناث مع صغارهم المعالين. تنضم العديد من هذه المجموعات معًا لتشكيل مجموعة من 40-100 عضو ",
      "content":
          "Fairly common, there are said to be more than 350,000 of them in the Asir region of Saudi Arabia. A single male maintains 1 and 3 females of along with their dependent young. Several of these groups join together to form a band of 40-100 members",
      "color": COLORS[new Random().nextInt(5)],
      "image": "assets/images/Sacred Baboon.jpg",
      "video": ""
    },
    //here
    {
      "title": "Arbian Red Fox",
      "titleAR": "الثعلب الأحمر العربي ",
      "contentAR":
          "الثعلب الأحمر العربي هو نوع فرعي من الثعلب الأحمر موطنه الأصلي شبه الجزيرة العربية ، وتحديداً جبال الحجر وظفار في عمان ، وكذلك الإمارات وسوريا والأردن والمملكة العربية السعودية واليمن ",
      "content":
          "Arabian red fox is a subspecies of the red fox native to the Arabian Peninsula, specifically the Hajar and Dhofar Mountains in Oman, as well as the UAE, Syria, Jordan, Saudi Arabia and Yemen.",
      "color": COLORS[new Random().nextInt(5)],
      "image": "assets/images/Arabian red fox.jpg",
      "video": ""
    },
    {
      "title": "Black Rat",
      "titleAR": "الجرذ الأسود",
      "contentAR":
          "الجرذ الأسود ، المعروف أيضًا باسم جرذ السقف ، أو جرذ السفينة ، أو الجرذ المنزلي ، هو أحد القوارض طويلة الذيل الشائعة من جنس الجرذ النمطي Rattus ، في الفصيلة الفرعية Murinae. من المحتمل أنه نشأ في شبه القارة الهندية ، ولكنه موجود الآن في جميع أنحاء العالم. ",
      "content":
          "The black rat, also known as the roof rat, ship rat, or house rat, is a common long-tailed rodent of the stereotypical rat genus Rattus, in the subfamily Murinae. It likely originated in the Indian subcontinent, but is now found worldwide.",
      "color": COLORS[new Random().nextInt(5)],
      "image": "assets/images/Black rat.jpg",
      "video": ""
    },
    {
      "title": "Sand Gazelle",
      "titleAR": "غزال الرمال ",
      "contentAR":
          "غزال الرمل العربي أو الريم هو نوع من الغزلان موطنه منطقة الشرق الأوسط ، وتحديداً الصحارى العربية والسورية. ",
      "content":
          "he Arabian sand gazelle or reem is a species of gazelle native to the Middle East, specifically the Arabian and Syrian Deserts",
      "color": COLORS[new Random().nextInt(5)],
      "image": "assets/images/Sand Gazelle.jpg",
      "video": ""
    },
    {
      "title": "Domestic Cat",
      "titleAR": "القط المحلي ",
      "contentAR":
          "القط هو نوع محلي من الثدييات آكلة اللحوم الصغيرة. وهو النوع الوحيد المستأنس في عائلة Felidae وغالبًا ما يشار إليه بالقطط الداجن لتمييزه عن أفراد الأسرة البرية. ",
      "content":
          "The cat is a domestic species of a small carnivorous mammal. It is the only domesticated species in the family Felidae and is often referred to as the domestic cat to distinguish it from the wild members of the family.",
      "color": COLORS[new Random().nextInt(5)],
      "image": "assets/images/Domestic Cat.jpg",
      "video": ""
    },
    {
      "title": "Common Pochard",
      "titleAR": "بوشار المشتركة ",
      "contentAR":
          "البستان الشائع هو بطة غوص متوسطة الحجم. الاسم العلمي مشتق من اليونانية aithuia وهو طائر بحري غير معروف ذكره المؤلفون بما في ذلك Hesychius و Aristotle ، واللاتينية ferina ، 'wild game' ، من ferus ، 'wild' ",
      "content":
          "The common pochard is a medium-sized diving duck. The scientific name is derived from Greek aithuia an unidentified seabird mentioned by authors including Hesychius and Aristotle, and Latin ferina, 'wild game', from ferus, 'wild'",
      "color": COLORS[new Random().nextInt(5)],
      "image": "assets/images/Common Pochard.jpg",
      "video": ""
    },
    {
      "title": "Eurasian Teal",
      "titleAR": "البط البري الأوراسي ",
      "contentAR":
          "البط البري الأوراسي ، البط البري الشائع ، أو البط البري الأخضر المجنح هو بطة شائعة وواسعة الانتشار تتكاثر في منطقة يوروسبيريا المعتدلة وتهاجر جنوبًا في الشتاء. غالبًا ما يُطلق على البط البري الأوراسي ببساطة البط البري نظرًا لكونه الوحيد من بين هذه البط الصغيرة الصغيرة في كثير من نطاقه. ",
      "content":
          "The Eurasian teal, common teal, or Eurasian green-winged teal is a common and widespread duck which breeds in temperate Eurosiberia and migrates south in winter. The Eurasian teal is often called simply the teal due to being the only one of these small dabbling ducks in much of its range.",
      "color": COLORS[new Random().nextInt(5)],
      "image": "assets/images/Eurasian Teal.jpg",
      "video": ""
    },
    {
      "title": "Northern Pintail",
      "titleAR": "شمال بينتيل ",
      "contentAR":
          "البنتيل أو البنتيل الشمالي هو نوع من أنواع البط ذات التوزيع الجغرافي الواسع الذي يتكاثر في المناطق الشمالية من أوروبا وعبر منطقة Palearctic وأمريكا الشمالية. ",
      "content":
          "The pintail or northern pintail is a duck species with wide geographic distribution that breeds in the northern areas of Europe and across the Palearctic and North America.",
      "color": COLORS[new Random().nextInt(5)],
      "image": "assets/images/Northern Pintail.jpeg",
      "video": ""
    },
    {
      "title": "Egyptian Goose",
      "titleAR": "أوزة مصرية",
      "contentAR":
          "الإوزة المصرية هي عضو في عائلة البط والإوز والبجع Anatidae. موطنها الأصلي هو إفريقيا جنوب الصحراء ووادي النيل. كان قدماء المصريين يعتبرون الأوز المصري مقدسًا ، وظهر في كثير من أعمالهم الفنية. ",
      "content":
          "The Egyptian goose is a member of the duck, goose, and swan family Anatidae. It is native to Africa south of the Sahara and the Nile Valley. Egyptian geese were considered sacred by the Ancient Egyptians, and appeared in much of their artwork.",
      "color": COLORS[new Random().nextInt(5)],
      "image": "assets/images/Egyptian Goose.jpg",
      "video": ""
    },
    {
      "title": "Grey Francolin",
      "titleAR": "جراي فرانكولين ",
      "contentAR":
          "الفرانكولين الرمادي المعروف أيضًا باسم 'مانو موا' أو 'طائر الدجاج' هو نوع من الفرانكولين يوجد في السهول والأجزاء الأكثر جفافاً في شبه القارة الهندية وإيران. ",
      "content":
          "The grey francolin also known as 'manu moa' or 'Chicken Bird' is a species of francolin found in the plains and drier parts of the Indian subcontinent and Iran.",
      "color": COLORS[new Random().nextInt(5)],
      "image": "assets/images/Grey Francolin.png",
      "video": ""
    },
    {
      "title": "Great Egret",
      "titleAR": "البلشون الأبيض العظيم",
      "contentAR":
          "البلشون الأبيض ، المعروف أيضًا باسم البلشون الأبيض أو البلشون الأبيض الكبير أو البلشون الأبيض الكبير هو طائر البلشون الأبيض الكبير الموزع على نطاق واسع ، مع أربعة أنواع فرعية موجودة في آسيا وإفريقيا والأمريكتين وجنوب أوروبا ، وقد انتشر أيضًا مؤخرًا إلى المزيد من المناطق الشمالية من أوروبا. ",
      "content":
          "The great egret, also known as the common egret, large egret, or great white egret or great white heron is a large, widely distributed egret, with four subspecies found in Asia, Africa, the Americas, and southern Europe, recently also spreading to more northern areas of Europe.",
      "color": COLORS[new Random().nextInt(5)],
      "image": "assets/images/Great Egret.jpg",
      "video": ""
    },
    {
      "title": "Greater Flamingo",
      "titleAR": "أكبر فلامنغو",
      "contentAR":
          "طائر الفلامنجو الأكبر هو النوع الأكثر انتشارًا والأكبر في عائلة طيور النحام. توجد في إفريقيا وشبه القارة الهندية والشرق الأوسط وجنوب أوروبا. ",
      "content":
          "The greater flamingo is the most widespread and largest species of the flamingo family. It is found in Africa, the Indian subcontinent, the Middle East, and in southern Europe.",
      "color": COLORS[new Random().nextInt(5)],
      "image": "assets/images/Greater Flamingo.jpg",
      "video": ""
    },
    {
      "title": "Hamadryads Sacred Baboon",
      "titleAR": "حمدريادس البابون المقدس ",
      "contentAR":
          "من الشائع إلى حد ما ، أن هناك أكثر من 350.000 منهم في منطقة عسير بالمملكة العربية السعودية. الذكر الوحيد يحتفظ بـ 1 و 3 إناث مع صغارهم المعالين. تنضم العديد من هذه المجموعات معًا لتشكيل مجموعة من 40-100 عضو ",
      "content":
          "Fairly common, there are said to be more than 350,000 of them in the Asir region of Saudi Arabia. A single male maintains 1 and 3 females of along with their dependent young. Several of these groups join together to form a band of 40-100 members",
      "color": COLORS[new Random().nextInt(5)],
      "image": "assets/images/Sacred Baboon.jpg",
      "video": ""
    },
    // {
    //   "title": "Hamadryads Sacred Baboon",
    //   "content":
    //       "Fairly common, there are said to be more than 350,000 of them in the Asir region of Saudi Arabia. A single male maintains 1 and 3 females of along with their dependent young. Several of these groups join together to form a band of 40-100 members",
    //   "color": COLORS[new Random().nextInt(5)],
    //   "image": "assets/images/Sacred Baboon.jpg"
    // },
    // {
    //   "title": "Hamadryads Sacred Baboon",
    //   "content":
    //       "Fairly common, there are said to be more than 350,000 of them in the Asir region of Saudi Arabia. A single male maintains 1 and 3 females of along with their dependent young. Several of these groups join together to form a band of 40-100 members",
    //   "color": COLORS[new Random().nextInt(5)],
    //   "image": "assets/images/Sacred Baboon.jpg"
    // },
    // {
    //   "title": "Hamadryads Sacred Baboon",
    //   "content":
    //       "Fairly common, there are said to be more than 350,000 of them in the Asir region of Saudi Arabia. A single male maintains 1 and 3 females of along with their dependent young. Several of these groups join together to form a band of 40-100 members",
    //   "color": COLORS[new Random().nextInt(5)],
    //   "image": "assets/images/Sacred Baboon.jpg"
    // },
    // {
    //   "title": "Hamadryads Sacred Baboon",
    //   "content":
    //       "Fairly common, there are said to be more than 350,000 of them in the Asir region of Saudi Arabia. A single male maintains 1 and 3 females of along with their dependent young. Several of these groups join together to form a band of 40-100 members",
    //   "color": COLORS[new Random().nextInt(5)],
    //   "image": "assets/images/Sacred Baboon.jpg"
    // },
    // {
    //   "title": "Hamadryads Sacred Baboon",
    //   "content":
    //       "Fairly common, there are said to be more than 350,000 of them in the Asir region of Saudi Arabia. A single male maintains 1 and 3 females of along with their dependent young. Several of these groups join together to form a band of 40-100 members",
    //   "color": COLORS[new Random().nextInt(5)],
    //   "image": "assets/images/Sacred Baboon.jpg"
    // },
    // {
    //   "title": "Hamadryads Sacred Baboon",
    //   "content":
    //       "Fairly common, there are said to be more than 350,000 of them in the Asir region of Saudi Arabia. A single male maintains 1 and 3 females of along with their dependent young. Several of these groups join together to form a band of 40-100 members",
    //   "color": COLORS[new Random().nextInt(5)],
    //   "image": "assets/images/Sacred Baboon.jpg"
    // },
    // {
    //   "title": "Hamadryads Sacred Baboon",
    //   "content":
    //       "Fairly common, there are said to be more than 350,000 of them in the Asir region of Saudi Arabia. A single male maintains 1 and 3 females of along with their dependent young. Several of these groups join together to form a band of 40-100 members",
    //   "color": COLORS[new Random().nextInt(5)],
    //   "image": "assets/images/Sacred Baboon.jpg"
    // },
    // {
    //   "title": "Hamadryads Sacred Baboon",
    //   "content":
    //       "Fairly common, there are said to be more than 350,000 of them in the Asir region of Saudi Arabia. A single male maintains 1 and 3 females of along with their dependent young. Several of these groups join together to form a band of 40-100 members",
    //   "color": COLORS[new Random().nextInt(5)],
    //   "image": "assets/images/Sacred Baboon.jpg"
    // },
    // {
    //   "title": "Hamadryads Sacred Baboon",
    //   "content":
    //       "Fairly common, there are said to be more than 350,000 of them in the Asir region of Saudi Arabia. A single male maintains 1 and 3 females of along with their dependent young. Several of these groups join together to form a band of 40-100 members",
    //   "color": COLORS[new Random().nextInt(5)],
    //   "image": "assets/images/Sacred Baboon.jpg"
    // },
    // {
    //   "title": "Hamadryads Sacred Baboon",
    //   "content":
    //       "Fairly common, there are said to be more than 350,000 of them in the Asir region of Saudi Arabia. A single male maintains 1 and 3 females of along with their dependent young. Several of these groups join together to form a band of 40-100 members",
    //   "color": COLORS[new Random().nextInt(5)],
    //   "image": "assets/images/Sacred Baboon.jpg"
    // },
    // {
    //   "title": "Hamadryads Sacred Baboon",
    //   "content":
    //       "Fairly common, there are said to be more than 350,000 of them in the Asir region of Saudi Arabia. A single male maintains 1 and 3 females of along with their dependent young. Several of these groups join together to form a band of 40-100 members",
    //   "color": COLORS[new Random().nextInt(5)],
    //   "image": "assets/images/Sacred Baboon.jpg"
    // },
    // {
    //   "title": "Hamadryads Sacred Baboon",
    //   "content":
    //       "Fairly common, there are said to be more than 350,000 of them in the Asir region of Saudi Arabia. A single male maintains 1 and 3 females of along with their dependent young. Several of these groups join together to form a band of 40-100 members",
    //   "color": COLORS[new Random().nextInt(5)],
    //   "image": "assets/images/Sacred Baboon.jpg"
    // },
    // {
    //   "title": "Hamadryads Sacred Baboon",
    //   "content":
    //       "Fairly common, there are said to be more than 350,000 of them in the Asir region of Saudi Arabia. A single male maintains 1 and 3 females of along with their dependent young. Several of these groups join together to form a band of 40-100 members",
    //   "color": COLORS[new Random().nextInt(5)],
    //   "image": "assets/images/Sacred Baboon.jpg"
    // },
    // {
    //   "title": "Hamadryads Sacred Baboon",
    //   "content":
    //       "Fairly common, there are said to be more than 350,000 of them in the Asir region of Saudi Arabia. A single male maintains 1 and 3 females of along with their dependent young. Several of these groups join together to form a band of 40-100 members",
    //   "color": COLORS[new Random().nextInt(5)],
    //   "image": "assets/images/Sacred Baboon.jpg"
    // },
    // {
    //   "title": "Hamadryads Sacred Baboon",
    //   "content":
    //       "Fairly common, there are said to be more than 350,000 of them in the Asir region of Saudi Arabia. A single male maintains 1 and 3 females of along with their dependent young. Several of these groups join together to form a band of 40-100 members",
    //   "color": COLORS[new Random().nextInt(5)],
    //   "image": "assets/images/Sacred Baboon.jpg"
    // }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                (context, index) => buildBody(context, data),
                childCount: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget getAppBar() {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(lang != 1 ? "الحيوانات" : 'ANMALS',
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.w500,
              fontSize: 18,
            )),
      ],
    ),
  );
}

buildBody(context, data) {
  return ListView.builder(
    shrinkWrap: true,
    padding: const EdgeInsets.all(5.0),
    // padding: const EdgeInsets.only(bottom: kFloatingActionButtonMargin + 400),
    physics: NeverScrollableScrollPhysics(),
    scrollDirection: Axis.vertical,
    primary: true,
    itemCount: data.length,
    itemBuilder: (BuildContext content, int index) {
      return Column(
        children: [
          AwesomeListItem(
              video: data[index]['video'],
              title: data[index]["title"],
              titleAR: data[index]["titleAR"],
              contentAR: data[index]["contentAR"],
              content: data[index]["content"],
              color: data[index]["color"],
              image: data[index]["image"]),
          SizedBox(
            height: 20,
          )
        ],
      );
    },
  );
}

class AwesomeListItem extends StatefulWidget {
  String title;
  String content;
  String titleAR;
  String contentAR;
  Color color;
  String image;
  String video;

  AwesomeListItem(
      {required this.title,
      required this.content,
      required this.color,
      required this.video,
      required this.image,
      required this.titleAR,
      required this.contentAR});

  @override
  _AwesomeListItemState createState() => new _AwesomeListItemState();
}

class _AwesomeListItemState extends State<AwesomeListItem> {
  late VideoPlayerController _videoPlayerController;
  bool startedPlaying = false;
  @override
  void initState() {
    super.initState();

    // _videoPlayerController = VideoPlayerController.asset(widget.video);
    // _videoPlayerController.addListener(() {
    //   if (startedPlaying && !_videoPlayerController.value.isPlaying) {
    //     Navigator.pop(context);
    //   }
    // });
  }

  @override
  // void dispose() {
  //   _videoPlayerController.dispose();
  //   super.dispose();
  // }

  // Future<bool> started() async {
  //   await _videoPlayerController.initialize();
  //   await _videoPlayerController.play();
  //   startedPlaying = true;
  //   return true;
  // }

  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: new Row(
        children: <Widget>[
          new Container(width: 10.0, height: 190.0, color: widget.color),
          new Expanded(
            child: new Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        // _videoPlayerController =
                        //     VideoPlayerController.asset(widget.video)
                        //       ..initialize().then(
                        //         (_) {
                        //           // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
                        //           setState(() {});
                        //         },
                        //       );
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => DetailsPage(
                        //       id: 1,
                        //       title: widget.title,
                        //       content: widget.content,
                        //       image: widget.image,
                        //     ),
                        //   ),
                        // );
                      });
                    },
                    child: new Text(
                      lang != 1 ? widget.titleAR : widget.title,
                      style: TextStyle(
                          color: Colors.grey.shade800,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: new Text(
                      lang != 1 ? widget.contentAR : widget.content,
                      style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    // color: Colors.red,
                    height: 30,
                    width: 100,
                    child:

                        // Center(
                        //   child: FutureBuilder<bool>(
                        //     future: started(),
                        //     builder: (BuildContext context,
                        //         AsyncSnapshot<bool> snapshot) {
                        //       if (snapshot.data == true) {
                        //         return AspectRatio(
                        //           aspectRatio:
                        //               _videoPlayerController.value.aspectRatio,
                        //           child: VideoPlayer(_videoPlayerController),
                        //         );
                        //       } else {
                        //         return const Text('waiting for video to load');
                        //       }
                        //     },
                        //   ),
                        // ),
                        ButtonWidget(
                      text: 'Play',
                      backColor: [Color(0xFFa2e1a6), Color(0xff8fdb94)],
                      textColor: const [
                        Colors.white,
                        Colors.white,
                      ],
                      onPressed: () {
                        setState(() {
                          // _videoPlayerController.initialize();
                          // _videoPlayerController.play();
                          // startedPlaying = true;
                          // showDialog(
                          //     context: context,
                          //     builder: (context) {
                          //       return Center(
                          //         child: Container(
                          //           child: SizedBox(
                          //             height: 500,
                          //             width: 500,
                          //             child: AspectRatio(
                          //               aspectRatio: _videoPlayerController
                          //                   .value.aspectRatio,
                          //               child:
                          //                   VideoPlayer(_videoPlayerController),
                          //             ),
                          //             // _videoPlayerController
                          //             //         .value.isInitialized
                          //             //     ? AspectRatio(
                          //             //         aspectRatio:
                          //             //             _videoPlayerController
                          //             //                 .value.aspectRatio,
                          //             //         child: VideoPlayer(
                          //             //             _videoPlayerController),
                          //             //       )
                          //             //     : Container(),
                          //           ),
                          //         ),
                          //       );
                          //     });
                          // _controller.play();
                          // VideoPlayer(_controller);
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          new Container(
            height: 150.0,
            width: 150.0,
            color: Colors.white,
            child: Stack(
              children: <Widget>[
                new Transform.translate(
                  offset: new Offset(lang != 1 ? 20.0 : 50.0, 0.0),
                  child: new Container(
                    height: 100.0,
                    width: 100.0,
                    color: widget.color,
                  ),
                ),
                new Transform.translate(
                  offset: Offset(10.0, 20.0),
                  child: new Card(
                    elevation: 20.0,
                    child: new Container(
                      height: 120.0,
                      width: 120.0,
                      decoration: new BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              width: 10.0,
                              color: Colors.white,
                              style: BorderStyle.solid),
                          image: DecorationImage(
                            image: AssetImage(
                              widget.image,
                            ),
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
