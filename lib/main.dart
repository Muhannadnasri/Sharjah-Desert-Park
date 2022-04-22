import 'dart:async';

import 'package:epaa_app/screens/visit%20and%20booking.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:epaa_app/screens/chairpersonMessage.dart';
import 'package:epaa_app/screens/ourAuthority.dart';
import 'package:epaa_app/screens/animalsPage.dart';
import 'package:epaa_app/screens/myParking.dart';
import 'package:epaa_app/screens/ourStrategy.dart';
import 'package:epaa_app/widgets/bottombar_item.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'screens/account.dart';
import 'screens/chat.dart';
import 'screens/home.dart';
import 'theme/color.dart';
import 'utils/constant.dart';
import 'widgets/global.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(const MyApp());
}

const Color p = Color(0xff416d69);

//

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void setLocale(Locale value) {
    setState(() {
      // locale = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        localizationsDelegates: [
          GlobalCupertinoLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          Locale("ar", "AE"), // OR Locale('ar', 'AE') OR Other RTL locales
          Locale("en", "US"), // OR Locale('ar', 'AE') OR Other RTL locales
        ],
        debugShowCheckedModeBanner: false,
        title: 'Sharjah Desert Park',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: p,
        ),
        home: const Zoom());
  }
}

final ZoomDrawerController z = ZoomDrawerController();

class Zoom extends StatefulWidget {
  const Zoom({Key? key}) : super(key: key);

  @override
  _ZoomState createState() => _ZoomState();
}

class _ZoomState extends State<Zoom> with TickerProviderStateMixin {
  GlobalKey<ScaffoldState> _key = new GlobalKey<ScaffoldState>();
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: ANIMATED_BODY_MS),
    vsync: this,
  );

  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
  );
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      isRtl: lang == 1 ? false : true,
      controller: z,
      borderRadius: 24,
      style: DrawerStyle.Style1,
      openCurve: Curves.fastOutSlowIn,
      disableGesture: false,
      mainScreenTapClose: false,
      slideWidth: MediaQuery.of(context).size.width * 0.65,
      duration: const Duration(milliseconds: 500),
      backgroundColor: Colors.white,
      showShadow: true,
      angle: 0.0,
      clipMainScreen: true,
      mainScreen: const Body(),
      menuScreen: Theme(
        data: ThemeData.dark(),
        child: WillPopScope(
          onWillPop: () async {
            if (_key.currentState!.isDrawerOpen) {
              Navigator.of(context).pop();
              return false;
            }
            return true;
          },
          child: Scaffold(
            backgroundColor: appBarColor,
            body: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView(
                children: [
                  SizedBox(
                    height: 100,
                    child: DrawerHeader(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Image.asset(
                              'assets/images/logo-full-en-white3.png',
                              height: 40,
                              width: 200,
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: appBarColor,
                      ),
                    ),
                  ),
                  ListTile(
                    dense: true,
                    textColor: Colors.black54,
                    leading: Image.asset(
                      'assets/icons/home.png',
                      height: 35,
                    ),
                    title: Text(lang == 1 ? 'Home' : 'الرئيسية'),
                    onTap: () {
                      setState(() {
                        // Navigator.pop(context);
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => AnimalsPage(),
                        //   ),
                        // );
                      });
                      z.close!();

                      // logOut(context);
                    },
                  ),
                  Divider(
                    thickness: 0.4,
                    color: Color.fromARGB(255, 54, 54, 54),
                  ),
                  // ListTile(
                  //   dense: true,
                  //   textColor: Colors.black54,
                  //   leading: Image.asset(
                  //     'assets/icons/map.png',
                  //     height: 35,
                  //   ),
                  //   title: Text(
                  //     lang == 1 ? "Map" : "خريطة",
                  //   ),
                  //   onTap: () {
                  //     // logOut(context);
                  //   },
                  // ),
                  // Divider(
                  //   thickness: 0.4,
                  //   color: Color.fromARGB(255, 54, 54, 54),
                  // ),
                  ListTile(
                    dense: true,
                    textColor: Colors.black54,
                    leading: Image.asset(
                      'assets/icons/animals.png',
                      height: 35,
                    ),
                    title: Text(
                      lang == 1 ? "Animals" : "الحيوانات",
                    ),
                    onTap: () {
                      setState(() {
                        // Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AnimalsPage(),
                          ),
                        );
                      });
                      z.close!();

                      // logOut(context);
                    },
                  ),
                  Divider(
                    thickness: 0.4,
                    color: Color.fromARGB(255, 54, 54, 54),
                  ),
                  ListTile(
                    dense: true,
                    textColor: Colors.black54,
                    leading: Image.asset(
                      'assets/icons/info.png',
                      height: 35,
                    ),
                    title: Text(
                      lang == 1 ? " Booking and Visit" : "مواعيد الزيارات ",
                    ),
                    onTap: () {
                      setState(() {
                        // Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VisitBookingPage(),
                          ),
                        );
                      });
                      z.close!();

                      // logOut(context);
                    },
                  ),

                  Divider(
                    thickness: 0.4,
                    color: Color.fromARGB(255, 54, 54, 54),
                  ),
                  ListTile(
                    dense: true,
                    textColor: Colors.black54,
                    leading: Image.asset(
                      'assets/icons/parking.png',
                      height: 35,
                    ),
                    title: Text(
                      lang == 1 ? "My Parking" : "موقفي",
                    ),
                    onTap: () {
                      setState(() {
                        // Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyParkingPage(),
                          ),
                        );
                      });
                      z.close!();

                      // logOut(context);
                    },
                  ),
                  Divider(
                    thickness: 0.4,
                    color: Color.fromARGB(255, 54, 54, 54),
                  ),
                  ExpansionTile(
                    initiallyExpanded: check,
                    children: [
                      Divider(
                        thickness: 0.4,
                        color: Color.fromARGB(255, 54, 54, 54),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: ListTile(
                          dense: true,
                          textColor: Colors.black54,
                          leading: Image.asset(
                            'assets/icons/info.png',
                            height: 35,
                          ),
                          title: Text(
                            lang == 1 ? "Our Authority" : "سلطتنا",
                          ),
                          onTap: () {
                            setState(() {
                              // Navigator.pop(context);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => OurAuthorityPage(),
                                ),
                              );
                            });
                            z.close!();
                            check = false;
                            // expansionTile.currentState.collapse();

                            // logOut(context);
                          },
                        ),
                      ),
                      Divider(
                        thickness: 0.4,
                        color: Color.fromARGB(255, 54, 54, 54),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: ListTile(
                          dense: true,
                          textColor: Colors.black54,
                          leading: Image.asset(
                            'assets/icons/info.png',
                            height: 35,
                          ),
                          title: Text(
                            lang == 1 ? "Chairperson Message" : "رسالة الرئيس",
                          ),
                          onTap: () {
                            setState(() {
                              // Navigator.pop(context);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      ChairpersonMessagePage(),
                                ),
                              );
                            });
                            z.close!();
                            check = false;
                            // logOut(context);
                          },
                        ),
                      ),
                      Divider(
                        thickness: 0.4,
                        color: Color.fromARGB(255, 54, 54, 54),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: ListTile(
                          dense: true,
                          textColor: Colors.black54,
                          leading: Image.asset(
                            'assets/icons/info.png',
                            height: 35,
                          ),
                          title: Text(
                            lang == 1 ? "Our Strategy" : "استراتيجيتنا",
                          ),
                          onTap: () {
                            setState(() {
                              // Navigator.pop(context);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => OurStrategyPage(),
                                ),
                              );
                            });
                            z.close!();
                            check = false;
                            // logOut(context);
                          },
                        ),
                      ),
                    ],
                    textColor: Colors.black54,
                    leading: Image.asset(
                      'assets/icons/info.png',
                      height: 35,
                    ),
                    title: Text(
                      lang == 1 ? "About Us" : "معلومات عنا ",
                    ),
                  ),
                  Divider(
                    thickness: 0.4,
                    color: Color.fromARGB(255, 54, 54, 54),
                  ),
                  ListTile(
                    dense: true,
                    textColor: Colors.black54,
                    leading: Image.asset(
                      'assets/icons/do.png',
                      height: 35,
                    ),
                    title: Text(
                      lang == 1 ? "Do's & Don'ts" : "افعل و لا تفعل ",
                    ),
                    onTap: () {
                      // logOut(context);
                    },
                  ),
                  // Divider(
                  //   thickness: 0.4,
                  //   color: Color.fromARGB(255, 54, 54, 54),
                  // ),
                  // ListTile(
                  //   dense: true,
                  //   textColor: Colors.black54,
                  //   leading: Image.asset(
                  //     'assets/icons/settings.png',
                  //     height: 35,
                  //   ),
                  //   title: Text(
                  //      lang == 1 ? "Settings":,
                  //   ),
                  //   onTap: () {
                  //     // logOut(context);
                  //   },
                  // ),

                  Divider(
                    thickness: 0.4,
                    color: Color.fromARGB(255, 54, 54, 54),
                  ),

                  locale == Locale("en", "US")
                      ? ListTile(
                          dense: true,
                          textColor: Colors.black54,
                          leading: Image.asset(
                            'assets/icons/settings.png',
                            height: 35,
                          ),
                          title: Text(
                            "العربية",
                          ),
                          onTap: () {
                            setState(() {
                              locale = Locale("ar", "AE");

                              Get.updateLocale(locale);
                              lang = 2;
                              // switchLang() {
                              // switchLan();
                              // switch (locale) {
                              //   case english:
                              //     {}
                              //     break;
                              //   case Locale("en", "US"):
                              //     {}
                              //     break;
                              //   default:
                              // }

                              //   lang == 1 ? Locale("ar", "AE") : Locale("en", "US")
                            });
                            z.close!();
                            // setState(() {});

                            // logOut(context);
                            // _locale
                          },
                        )
                      : ListTile(
                          dense: true,
                          textColor: Colors.black54,
                          leading: Image.asset(
                            'assets/icons/settings.png',
                            height: 35,
                          ),
                          title: Text(
                            "English",
                          ),
                          onTap: () {
                            setState(() {
                              locale = Locale("en", "US");

                              Get.updateLocale(locale);
                              lang = 1;
                            });
                            z.close!();
                            // setState(() {});

                            // logOut(context);
                            // _locale
                          },
                        ),
                  //
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> with SingleTickerProviderStateMixin {
  late AnimationController controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 100),
    value: -1.0,
  );

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  bool get isPanelVisible {
    final AnimationStatus status = controller.status;
    return status == AnimationStatus.completed ||
        status == AnimationStatus.forward;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TwoPanels(
        controller: controller,
      ),
    );
  }
}

class TwoPanels extends StatefulWidget {
  final AnimationController controller;

  const TwoPanels({Key? key, required this.controller}) : super(key: key);

  @override
  _TwoPanelsState createState() => _TwoPanelsState();
}

class _TwoPanelsState extends State<TwoPanels> with TickerProviderStateMixin {
  static const header_height = 32.0;
  late TabController tabController = TabController(length: 3, vsync: this);

  Animation<RelativeRect> getPanelAnimation(BoxConstraints constraints) {
    final height = constraints.biggest.height;
    final backPanelHeight = height - header_height;
    const frontPanelHeight = -header_height;

    return RelativeRectTween(
            begin: RelativeRect.fromLTRB(
                0.0, backPanelHeight, 0.0, frontPanelHeight),
            end: RelativeRect.fromLTRB(0.0, 100, 0.0, 0.0))
        .animate(
            CurvedAnimation(parent: widget.controller, curve: Curves.linear));
  }

  int activeTab = 0;
  List barItems = [
    {
      "icon": "assets/icons/home.svg",
      "active_icon": "assets/icons/home.svg",
      "page": HomePage(),
    },
    {
      "icon": "assets/icons/search.svg",
      "active_icon": "assets/icons/search.svg",
      "page": Container(),
    },
    {
      "icon": "assets/icons/play.svg",
      "active_icon": "assets/icons/play.svg",
      "page": Container(),
    },
    // {
    //   "icon": "assets/icons/chat.svg",
    //   "active_icon": "assets/icons/chat.svg",
    //   "page": ChatPage(),
    // },
    // {
    //   "icon": "assets/icons/profile.svg",
    //   "active_icon": "assets/icons/profile.svg",
    //   "page": AccountPage(),
    // },
  ];

//====== set animation=====
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: ANIMATED_BODY_MS),
    vsync: this,
  );
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
  );

  @override
  void initState() {
    super.initState();
    // Timer(Duration(milliseconds: 1000), () {
    //   _controller.forward();
    // });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.stop();
    _controller.dispose();
    super.dispose();
  }

  animatedPage(page) {
    return FadeTransition(child: page, opacity: _animation);
  }

  void onPageChanged(int index) {
    _controller.reset();
    setState(() {
      activeTab = index;
    });
    _controller.forward();
  }

//====== end set animation=====

  Widget bothPanels(BuildContext context, BoxConstraints constraints) {
    final ThemeData theme = Theme.of(context);
    return Container(
      child: Stack(
        children: <Widget>[
          Scaffold(
              // bottomNavigationBar: getBottomBar(),
              appBar: AppBar(
                backgroundColor: appBarColor,
                foregroundColor: Colors.black,
                title: Image.asset(
                  'assets/images/logo-full-en-white3.png',
                  height: 40,
                  width: 200,
                ),
                elevation: 0.0,
                leading: IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {
                    z.toggle!();
                  },
                ),
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
              body: getBarPage()),
        ],
      ),
    );
  }

  Widget getBarPage() {
    return IndexedStack(
        index: activeTab,
        children: List.generate(
            barItems.length, (index) => animatedPage(barItems[index]["page"])));
  }

  Widget getBottomBar() {
    return Container(
      height: 75,
      width: double.infinity,
      decoration: BoxDecoration(
          color: bottomBarColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25)),
          boxShadow: [
            BoxShadow(
                color: shadowColor.withOpacity(0.1),
                blurRadius: 1,
                spreadRadius: 1,
                offset: Offset(1, 1))
          ]),
      child: Padding(
          padding: const EdgeInsets.only(
            left: 25,
            right: 25,
            bottom: 15,
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                  barItems.length,
                  (index) => BottomBarItem(
                        barItems[index]["icon"],
                        isActive: activeTab == index,
                        activeColor: appBarColor,
                        onTap: () {
                          onPageChanged(index);
                        },
                      )))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: bothPanels,
    );
  }
}
