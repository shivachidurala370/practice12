import 'package:flutter/material.dart';
import 'package:practice12/hello_tunes.dart';
import 'package:practice12/settings.dart';

class Mymusic extends StatefulWidget {
  const Mymusic({super.key});

  @override
  State<Mymusic> createState() => _MymusicState();
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
List<String> numbers = ["1", "2", "3", "4"];

class _MymusicState extends State<Mymusic> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF0d0d0d),
        body: Container(
          height: 760,
          decoration: BoxDecoration(
            color: Color(0xFF0d0d0d),
          ),
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Color(0xFF167ec8),
                                  shape: BoxShape.circle),
                              child: Text(
                                "SC",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFFdeffff)),
                              ),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Text(
                              "My Music",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFffffff)),
                            ),
                          ]),
                          Icon(
                            Icons.search,
                            color: Color(0xFFf7f7f7),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 20),
                            height: 120,
                            width: 175,
                            decoration: BoxDecoration(
                                color: Color(0xFF2c2c2c),
                                borderRadius: BorderRadius.circular(16)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.arrow_circle_down,
                                  color: Color(0xFFf6f6f6),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "Downloads",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFf6f6f6)),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "154 songs",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w200,
                                      color: Color(0xFFa3a2a6)),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 20),
                            height: 120,
                            width: 175,
                            decoration: BoxDecoration(
                                color: Color(0xFF2c2c2c),
                                borderRadius: BorderRadius.circular(16)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.arrow_circle_down,
                                  color: Color(0xFFf6f6f6),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "Local Mp3",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFf6f6f6)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 20),
                            height: 120,
                            width: 175,
                            decoration: BoxDecoration(
                                color: Color(0xFF2c2c2c),
                                borderRadius: BorderRadius.circular(16)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.favorite,
                                  color: Color(0xFFfe9a9a),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "Liked Music",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFf6f6f6)),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "0 songs",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w200,
                                      color: Color(0xFFa3a2a6)),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 20),
                            height: 120,
                            width: 175,
                            decoration: BoxDecoration(
                                color: Color(0xFF2c2c2c),
                                borderRadius: BorderRadius.circular(16)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.queue_music_outlined,
                                  color: Color(0xFFf5f5f5),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "Playlists",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFf6f6f6)),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "1 playlists",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w200,
                                      color: Color(0xFFa3a2a6)),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 20),
                            height: 120,
                            width: 175,
                            decoration: BoxDecoration(
                                color: Color(0xFF2c2c2c),
                                borderRadius: BorderRadius.circular(16)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.person,
                                  color: Color(0xFFfcfcfc),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "Artists",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFf6f6f6)),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "0 artists",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w200,
                                      color: Color(0xFFa3a2a6)),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Recently Played",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFFe0e0e0)),
                          ),
                          Text(
                            "See all",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                color: Color(0xFFc5c5c5)),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image: AssetImage("assets/babysong.jpg"),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "O Rendu prema Meghalila(From Baby)",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFFd0d0d0)),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    "Song . Vijai Bulganin",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w200,
                                        color: Color(0xFF626262)),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Icon(
                            Icons.more_vert,
                            color: Color(0xFF616161),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image:
                                          AssetImage("assets/adhipurush.jpg"),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Jai sri Ram(From Adhipurush)",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFFd0d0d0)),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    "Song . Vijai Bulganin",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w200,
                                        color: Color(0xFF626262)),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Icon(
                            Icons.more_vert,
                            color: Color(0xFF616161),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image:
                                          AssetImage("assets/arjunreddy.jpg"),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Emitemitemito(From ArjunReddy)",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFFd0d0d0)),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    "Song . Arjun Reddy",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w200,
                                        color: Color(0xFF626262)),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Icon(
                            Icons.more_vert,
                            color: Color(0xFF616161),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image:
                                          AssetImage("assets/premisthunna.jpg"),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Premisthunna(From Baby)",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFFd0d0d0)),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    "Song . Vijai Bulaganin",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w200,
                                        color: Color(0xFF626262)),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Icon(
                            Icons.more_vert,
                            color: Color(0xFF616161),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Your Most Played Songs",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFFdfdfdf)),
                          ),
                          Text(
                            "See all",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                color: Color(0xFFb0b0b0)),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: 150,
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              return Stack(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                            fontSize: 8,
                                            fontWeight: FontWeight.w300,
                                            color: Color(0xFFdedede)),
                                      ),
                                    ],
                                  )
                                ],
                              );
                            },
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return Container(
                                width: 5,
                              );
                            },
                            itemCount: images.length),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Mixes for You",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFFdfdfdf)),
                          ),
                          Text(
                            "See all",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                color: Color(0xFFbfbfbf)),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 150,
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              return Stack(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                              bottom: 0,
                                              left: 10,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Your",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            color: Color(
                                                                0xFFf0f0ee)),
                                                      ),
                                                      Text(
                                                        "Mix",
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            color: Color(
                                                                0xFF90d7b7)),
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width: 60,
                                                  ),
                                                  Text(
                                                    numbers[index],
                                                    style: TextStyle(
                                                        fontSize: 30,
                                                        color:
                                                            Color(0xFFececeb)),
                                                  )
                                                ],
                                              ),
                                            ),
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
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return Container(
                                width: 10,
                              );
                            },
                            itemCount: images.length),
                      ),
                    ],
                  ),
                );
              },
              itemCount: 1),
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
        //           Icon(
        //             Icons.music_note,
        //             color: Color(0xFFfbfbfb),
        //           ),
        //           Text(
        //             "My Music",
        //             style: TextStyle(
        //                 fontSize: 12,
        //                 fontWeight: FontWeight.w400,
        //                 color: Color(0xFFfbfbfb)),
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
        //       InkWell(
        //         onTap: () {
        //           Navigator.push(
        //               context,
        //               MaterialPageRoute(
        //                   builder: (BuildContext) => Hellotunes()));
        //         },
        //         child: Column(
        //           children: [
        //             Container(
        //               alignment: Alignment.center,
        //               height: 20,
        //               width: 20,
        //               decoration: BoxDecoration(
        //                 color: Color(0xFF5f5f5f),
        //                 shape: BoxShape.circle,
        //               ),
        //               child: Icon(
        //                 Icons.music_note_outlined,
        //                 size: 15,
        //                 color: Color(0xFF1d1d1d),
        //               ),
        //             ),
        //             Text(
        //               "Hellotunes",
        //               style: TextStyle(
        //                   fontSize: 12,
        //                   fontWeight: FontWeight.w400,
        //                   color: Color(0xFF5a5a5a)),
        //             )
        //           ],
        //         ),
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
        //               "Settings",
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
