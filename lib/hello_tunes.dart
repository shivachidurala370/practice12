import 'package:flutter/material.dart';
import 'package:practice12/Mymusic.dart';
import 'package:practice12/settings.dart';

class Hellotunes extends StatefulWidget {
  const Hellotunes({super.key});

  @override
  State<Hellotunes> createState() => _HellotunesState();
}

List<String> images = [
  "assets/premisthunna.jpg",
  "assets/arjunreddy.jpg",
  "assets/adhipurush.jpg",
  "assets/babysong.jpg"
];
List<String> names = [
  "Premisthunna from Baby",
  "Emitemito From Arju Reddy",
  "Jai Sri Ram From Adhipurush",
  "O Rendu Prema Meghalilla From Baby"
];
List<String> images1 = [
  "assets/dilkush.jpg",
  "assets/miskin.jpg",
  "assets/premisthunna.jpg",
  "assets/arjunreddy.jpg"
];
List<String> names1 = [
  "Dilkush (from Selfish)",
  "Zihaal E Miskin",
  "Premisthunn (From Baby)",
  "Emitemoto (From arjuReddy)"
];

class _HellotunesState extends State<Hellotunes> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF0d0d0d),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 28),
          height: 780,
          decoration: BoxDecoration(color: Color(0xFF0d0d0d)),
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hellotunes",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFffffff)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 60,
                    decoration: BoxDecoration(
                        color: Color(0xFF262628),
                        borderRadius: BorderRadius.circular(14)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.search,
                          color: Color(0xFFc5c7cb),
                        ),
                        Text(
                          "Artist,Songs,Podcast or Hellotunes",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFc5c7cb)),
                        ),
                        Icon(
                          Icons.mic,
                          color: Color(0xFFc5c7cb),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 36,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    height: 130,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFF3c6fec),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Last Set Hellotune",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFFdefaff)),
                            ),
                            Text(
                              "Expired on 16th Aug 23",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w200,
                                  color: Color(0xFFdefaff)),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Color(0xFFffffff),
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/premisthunna.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Premisthunna (From baby)",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFFe1f0f7)),
                                ),
                                Text(
                                  "Song . Vijay Bulganin",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w200,
                                      color: Color(0xFF87a7fd)),
                                ),
                              ],
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 40,
                              width: 80,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color(0xFFc4ddff), width: 2),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Text(
                                "Manage",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xFFfbfdff)),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Just For You",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFFdddddd)),
                          ),
                          Icon(
                            Icons.music_note,
                            color: Color(0xFF556f76),
                          ),
                        ],
                      ),
                      Text(
                        "See all",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w200,
                            color: Color(0xFFd1d1d1)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Container(
                    height: 150,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Stack(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 120,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(images[index]),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                            bottom: 2,
                                            right: 5,
                                            child: Icon(
                                              Icons.play_circle,
                                              size: 30,
                                              color: Color(0xFFe9eaeb),
                                            )),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    names[index],
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xFFdedede)),
                                  ),
                                ],
                              )
                            ],
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return Container(
                            width: 8,
                          );
                        },
                        itemCount: images.length),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Trending Hellotunes",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFe3e3e3)),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 150,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Stack(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 120,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(images1[index]),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    names1[index],
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xFFdedede)),
                                  ),
                                ],
                              )
                            ],
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return Container(
                            width: 8,
                          );
                        },
                        itemCount: images1.length),
                  ),
                ],
              );
            },
          ),
        ),

        // bottomSheet: Container(
        //   padding: EdgeInsets.symmetric(horizontal: 16),
        //   height: 56,
        //   decoration: BoxDecoration(
        //     color: Color(0xFF0d0d0d),
        //   ),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [
        //       Column(
        //         children: [
        //           InkWell(
        //             onTap: () {
        //               Navigator.pop(context);
        //             },
        //             child: Icon(
        //               Icons.home,
        //               color: Color(0xFF5f5f5f),
        //             ),
        //           ),
        //           Text(
        //             "Home",
        //             style: TextStyle(
        //                 fontSize: 12,
        //                 fontWeight: FontWeight.w400,
        //                 color: Color(0xFF5f5f5f)),
        //           )
        //         ],
        //       ),
        //       Column(
        //         children: [
        //           InkWell(
        //             onTap: () {
        //               Navigator.pop(
        //                   context,
        //                   MaterialPageRoute(
        //                       builder: (BuildContext) => Mymusic()));
        //             },
        //             child: Icon(
        //               Icons.music_note,
        //               color: Color(0xFF606060),
        //             ),
        //           ),
        //           Text(
        //             "My Music",
        //             style: TextStyle(
        //                 fontSize: 12,
        //                 fontWeight: FontWeight.w400,
        //                 color: Color(0xFF606060)),
        //           )
        //         ],
        //       ),
        //       Container(
        //         alignment: Alignment.center,
        //         height: 80,
        //         width: 80,
        //         decoration: BoxDecoration(
        //           color: Color(0xFFf45e5f),
        //           shape: BoxShape.circle,
        //         ),
        //         child: Icon(
        //           Icons.play_arrow,
        //           size: 30,
        //           color: Color(0xFFfdfdfd),
        //         ),
        //       ),
        //       Column(
        //         children: [
        //           Container(
        //             alignment: Alignment.center,
        //             height: 20,
        //             width: 20,
        //             decoration: BoxDecoration(
        //               color: Color(0xFFf9f9f9),
        //               shape: BoxShape.circle,
        //             ),
        //             child: Icon(
        //               Icons.music_note_outlined,
        //               size: 15,
        //               color: Color(0xFF1c1c1c),
        //             ),
        //           ),
        //           Text(
        //             "Hellotunes",
        //             style: TextStyle(
        //                 fontSize: 12,
        //                 fontWeight: FontWeight.w400,
        //                 color: Color(0xFFf1f1f1)),
        //           )
        //         ],
        //       ),
        //       InkWell(
        //         onTap: () {
        //           Navigator.push(context,
        //               MaterialPageRoute(builder: (context) => Settings()));
        //         },
        //         child: Column(
        //           children: [
        //             Stack(
        //               children: [
        //                 Icon(
        //                   Icons.person,
        //                   color: Color(0xFF606060),
        //                 ),
        //                 Positioned(
        //                   top: 3,
        //                   right: 3,
        //                   child: Icon(
        //                     Icons.settings,
        //                     size: 8,
        //                     color: Color(0xFF5e5e5e),
        //                   ),
        //                 ),
        //               ],
        //             ),
        //             Text(
        //               "settings",
        //               style: TextStyle(
        //                   fontSize: 12,
        //                   fontWeight: FontWeight.w400,
        //                   color: Color(0xFF4f4f4f)),
        //             )
        //           ],
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
