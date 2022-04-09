import 'package:carousel_slider/carousel_slider.dart';
import 'package:epaa_app/theme/color.dart';
import 'package:epaa_app/widgets/feature_item.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/global.dart';
import 'detailChildren.dart';
import 'detailGarden.dart';
import 'detailMuseum.dart';
import 'detailWildlife.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List experience = [
    {
      "id": 100,
      "name": "Arabia's Wildlife Centre",
      "nameAr": "حيوانات شبه الجزيرة العربية",
      "image": "assets/images/img_4037.jpg",
      "imageInside": "assets/images/img_4034.jpg",
      "content": 'assets/html/ourAuthority.txt',
    },
    {
      "id": 101,
      "name": "Children's Farm",
      "nameAr": "مزرعة الاطفال",
      "image": "assets/images/childrensfar.jpg",
      "imageInside": "assets/images/dhabb.jpg",
      "content":
          "Even though Sharjah wildlife is abundant, the Arab region still has a lot of species that are endangered. The Breeding Centre for Endangered Arabian Wildlife was founded to prevent the extinction of these rare animals. Located in Sharjah Desert Park, this modern centre uses science and research to promote the breeding of nearly 200 species of threatened Arabian wildlife. The Arabian leopard is one of the success stories at this Sharjah wildlife centre, with the big cat’s population in the wild slowly increasing from 250.While the centre is not open to the public, you can visit these animals next door in Arabia’s Wildlife Centre. This should be on every wildlife enthusiast’s list of places to visit in Sharjah. The Arabian leopard is only seen in select tourist places in Sharjah, and this centre is one of them. The animals are housed in large outdoor enclosures making it a prime place to see the region’s famous big cat up close. The Arabian Oryx, the UAE’s national animal, is also a popular attraction here. Among all the parks in Sharjah, this one has the most number of things to do with kids. The desert park has a petting zoo, specifically designed for a family and child friendly experience. ",
    },
    {
      "id": 102,
      "name": "Natural History and Botanical Museum",
      "nameAr": "متحف التاريخ الطبيعي و النباتي",
      "image": "assets/images/Natural History and Botanical Museum.jpg",
      "imageInside": "assets/images/botanicalgarden1.jpg",
      "content":
          "The Islamic Botanical Garden is a beautiful green space composed of nearly 100 different plants, including figs, pomegranates and saffron. The gardens aim to promote reflection, with paved walkways, ornamental pools and narrow waterways inspired by traditional aflaj (irrigation channels).You can stroll through the grounds and visit the interpretation centre, which features exhibits and touchscreens. There's also a café serving up Arabic cuisine using produce from the gardens, and a library packed with books on plants.",
    },
    {
      "id": 103,
      "name": "Islamic Botanical Garden",
      "nameAr": "الحديقة السلامية",
      "image": "assets/images/botanicalgarden3.jpg",
      "imageInside": "assets/images/botanicalgarden1.jpg",
      "content":
          "The Islamic Botanical Garden is a beautiful green space composed of nearly 100 different plants, including figs, pomegranates and saffron. The gardens aim to promote reflection, with paved walkways, ornamental pools and narrow waterways inspired by traditional aflaj (irrigation channels).You can stroll through the grounds and visit the interpretation centre, which features exhibits and touchscreens. There's also a café serving up Arabic cuisine using produce from the gardens, and a library packed with books on plants.",
    },
  ];
  @override
  Widget build(BuildContext context) {
    setState(() {});
    return Scaffold(
        backgroundColor: Colors.green[100]?.withOpacity(0.5),
        body: CustomScrollView(
          slivers: [
            // SliverAppBar(
            //   backgroundColor: appBarColor,
            //   pinned: true,
            //   snap: true,
            //   floating: true,
            //   title: getAppBar(),
            // ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => buildBody(),
                childCount: 1,
              ),
            )
          ],
        ));
  }

  // Widget getAppBar() {
  //   return Container(
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //       children: [
  //         Expanded(
  //             child: Column(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             Text(
  //               profile["name"]!,
  //               style: TextStyle(
  //                 color: labelColor,
  //                 fontSize: 14,
  //               ),
  //             ),
  //             SizedBox(
  //               height: 5,
  //             ),
  //             Text("Good Morning!",
  //                 style: TextStyle(
  //                   color: textColor,
  //                   fontWeight: FontWeight.w500,
  //                   fontSize: 18,
  //                 )),
  //           ],
  //         )),
  //         NotificationBox(
  //           notifiedNumber: 1,
  //           onTap: () {},
  //         )
  //       ],
  //     ),
  //   );
  // }

  buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            alignment: Alignment.center,
            child: Text(
              lang == 1 ? 'SHARJAH DESERT PARK' : 'منتزه الشارقة الصحراوي',
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold,
                fontSize: 30,
                wordSpacing: 10,
              ),
            ),
          ),
          // getCategories(),
          // Container(
          //   child: Image.asset(
          //     'assets/images/kelompokhewandad.png',
          //   ),
          // ),

          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
            child: Text(
              lang == 1 ? "OPENING HOURS" : "ساعات العمل ",
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          getHours(),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
            child: Text(lang == 1 ? "Centers" : "المراكز",
                style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                )),
          ),
          getExperiences(),
          // SizedBox(
          //   height: 15,
          // ),
          // Padding(
          //   padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
          //   child: Text("Featured",
          //       style: TextStyle(
          //         color: textColor,
          //         fontWeight: FontWeight.w600,
          //         fontSize: 24,
          //       )),
          // ),
          // getFeature(),
          // SizedBox(
          //   height: 15,
          // ),
          // Container(
          //   margin: EdgeInsets.fromLTRB(15, 0, 15, 10),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Text(
          //         "Activities",
          //         style: TextStyle(
          //             fontSize: 22,
          //             fontWeight: FontWeight.w600,
          //             color: textColor),
          //       ),
          //       Text(
          //         "See all",
          //         style: TextStyle(fontSize: 14, color: darker),
          //       ),
          //     ],
          //   ),
          // ),
          // getActivities(),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
            child: Text(
              lang == 1 ? "CONTACT US" : "اتصل بنا",
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          getContacts(),
          SizedBox(
            height: 80,
          )
        ]),
      ),
    );
  }

  getContacts() {
    return Container(
      child: Column(
        children: [
          Row(children: [
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.info,
              color: Colors.blue,
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  lang == 1 ? 'Informations:' : 'معلومات: ',
                  style: TextStyle(color: Colors.blue),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '+971 65 311 999',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'awc@epaa.shj.ae',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ]),
          SizedBox(
            height: 20,
          ),
          Row(children: [
            SizedBox(
              width: 20,
            ),
            Icon(
              FontAwesomeIcons.ticket,
              color: Colors.red,
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  lang == 1 ? 'Booking: ' : 'الحجز: ',
                  style: TextStyle(color: Colors.red),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'booking@epaa.shj.ae',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '+971 65 038 080',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ]),
          SizedBox(
            height: 20,
          ),
          Row(children: [
            SizedBox(
              width: 20,
            ),
            Icon(
              FontAwesomeIcons.hashtag,
              color: Colors.green,
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  lang == 1 ? 'Social Media: ' : 'وسائل التواصل الاجتماعي: ',
                  style: TextStyle(color: Colors.red),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      FontAwesomeIcons.facebook,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      FontAwesomeIcons.youtube,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      FontAwesomeIcons.instagram,
                      color: Colors.purple,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      FontAwesomeIcons.twitter,
                      color: Colors.blueAccent,
                    ),
                  ],
                )
              ],
            ),
          ]),
        ],
      ),
    );
  }

  getHours() {
    return Container(
      child: Column(
        children: [
          Row(children: [
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.timelapse_sharp,
              color: Colors.blue,
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Weekdays: Saturday – Thursday',
                  style: TextStyle(color: Colors.blue),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '9:00 AM –6:30 PM',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ]),
          SizedBox(
            height: 20,
          ),
          Row(children: [
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.more_time,
              color: Colors.red,
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Weekends: Friday – Saturday',
                  style: TextStyle(color: Colors.red),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Friday: 2:00 PM – 6:30 PM',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Saturday: 11:00 AM – 6:30 PM',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ]),
        ],
      ),
    );
  }

  getExperiences() {
    return CarouselSlider(
        options: CarouselOptions(
          height: 230,
          enlargeCenterPage: true,
          disableCenter: true,
          viewportFraction: kIsWeb ? 0.25 : 0.75,
        ),
        items: List.generate(
            experience.length,
            (index) => FeatureItem(
                onTap: () {
                  switch (experience[index]["id"]) {
                    case 100:
                      {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailWildlifePage(
                                // id: experience[index]["id"],
                                // data: experience[index],
                                ),
                          ),
                        );
                      }
                      break;
                    case 101:
                      {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailChildrenPage(
                                // id: experience[index]["id"],
                                // data: experience[index],
                                ),
                          ),
                        );
                      }
                      break;
                    case 102:
                      {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailMuseumPage(
                                // id: experience[index]["id"],
                                // data: experience[index],
                                ),
                          ),
                        );
                      }
                      break;
                    case 103:
                      {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailGardenPage(
                                // id: experience[index]["id"],
                                // data: experience[index],
                                ),
                          ),
                        );
                      }
                      break;
                    case 100:
                      {}
                      break;

                    default:
                  }
                },
                data: experience[index])));
  }

  // getFeature() {
  //   return CarouselSlider(
  //       options: CarouselOptions(
  //         height: 290,
  //         enlargeCenterPage: true,
  //         disableCenter: true,
  //         viewportFraction: .75,
  //       ),
  //       items: List.generate(features.length,
  //           (index) => FeatureItem(onTap: () {}, data: features[index])));
  // }

  // getRecommend() {
  //   return SingleChildScrollView(
  //     padding: EdgeInsets.fromLTRB(15, 5, 0, 5),
  //     scrollDirection: Axis.horizontal,
  //     child: Row(
  //         children: List.generate(
  //             recommends.length,
  //             (index) => Padding(
  //                 padding: const EdgeInsets.only(right: 10),
  //                 child: RecommendItem(
  //                   data: recommends[index],
  //                   onTap: () {},
  //                 )))),
  //   );
  // }

  // getActivities() {
  //   return SingleChildScrollView(
  //     padding: EdgeInsets.fromLTRB(15, 5, 0, 5),
  //     scrollDirection: Axis.horizontal,
  //     child: Row(
  //         children: List.generate(
  //             activities.length,
  //             (index) => Padding(
  //                 padding: const EdgeInsets.only(right: 10),
  //                 child: RecommendItem(
  //                   data: activities[index],
  //                   onTap: () {},
  //                 )))),
  //   );
  // }
}
