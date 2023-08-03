import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF0d0d0d),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back_ios_new,
                    color: Color(0xFFc1c1c1),
                  ),
                  Text(
                    "Settings",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFc1c1c1)),
                  ),
                  Container(),
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Container(
                height: 640,
                child: ListView.builder(
                    shrinkWrap: true,
                    //physics: NeverScrollableScrollPhysics(),
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            height: 166,
                            decoration: BoxDecoration(
                              color: Color(0xFF1c1c1c),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundColor: Color(0xFF565b61),
                                      child: Icon(
                                        Icons.download_for_offline_rounded,
                                        color: Color(0xFFced1d0),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 14,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Wynk Downloads",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFFffffff)),
                                        ),
                                        Text(
                                          "Unlimited Streaming.Hellotunes.Unlimited Downloads",
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w200,
                                              color: Color(0xFFd2d2d2)),
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          "Valid till 12 Aug 2023",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFF979797)),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 28,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 8),
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF131313),
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Switch to Premium for an add-free experience",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFFd9d9d9)),
                                      ),
                                      Container(
                                        height: 24,
                                        width: 70,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFf5f5f5),
                                          borderRadius:
                                              BorderRadius.circular(6),
                                        ),
                                        child: Text(
                                          "See plans",
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w200,
                                              color: Color(0xFF373737)),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          Text(
                            "Music Listening Preferences",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFFdcdcdc)),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "New Player experience",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xFFc7c7c7)),
                                  ),
                                  Text(
                                    "Swift control, better recommendations",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w100,
                                        color: Color(0xFF616568)),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xFF9c9d9f),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 28,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Music Lnaguage(s)",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFd6d6d6)),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Telugu",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xFF176ba0)),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Color(0xFF9c9d9f),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 28,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "on Click Behaviour-List",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFd6d6d6)),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Play entire list indtead",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xFF176ba0)),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Color(0xFF9c9d9f),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 28,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Streaming Quality",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFd6d6d6)),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Auto",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xFF176ba0)),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Color(0xFF9c9d9f),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 28,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Equalizer",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xFFc7c7c7)),
                                  ),
                                  Text(
                                    "Adjust audio settings",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w100,
                                        color: Color(0xFF616568)),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xFF9c9d9f),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 28,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Offline songs on slow internet",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xFFc7c7c7)),
                                  ),
                                  Text(
                                    "play downloaded and mp3 songs only",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w100,
                                        color: Color(0xFF616568)),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xFF9c9d9f),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 28,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Allo wexplict content",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xFFc7c7c7)),
                                  ),
                                  Text(
                                    "Turn off to skip explict content",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w100,
                                        color: Color(0xFF616568)),
                                  ),
                                  Text(
                                    "Explict content is labled with tag",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w100,
                                        color: Color(0xFF616568)),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xFF9c9d9f),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 28,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Sleep Timer",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xFFc7c7c7)),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xFF9c9d9f),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          Text(
                            "offline Music Preferences",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFFdcdcdc)),
                          ),
                          SizedBox(
                            height: 28,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Download Quality",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFd6d6d6)),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "HD",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xFF176ba0)),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Color(0xFF9c9d9f),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          Text(
                            "Podcast Preferences",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFFdcdcdc)),
                          ),
                          SizedBox(
                            height: 28,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Add Categories",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFd6d6d6)),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "No Slection",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xFF176ba0)),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Color(0xFF9c9d9f),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          Text(
                            "profile",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFFdcdcdc)),
                          ),
                          SizedBox(
                            height: 28,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Manage Hellotunes",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xFFc7c7c7)),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xFF9c9d9f),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 28,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "My Profile",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xFFc7c7c7)),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xFF9c9d9f),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 28,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Help & Support",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xFFc7c7c7)),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xFF9c9d9f),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 28,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Logout",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xFFc7c7c7)),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xFF9c9d9f),
                              )
                            ],
                          ),
                        ],
                      );
                    }),
              )
            ],
          ),
        ),

        // using bottomsheet
        // bottomSheet: Container(
        //   padding: EdgeInsets.symmetric(horizontal: 16),
        //   height: 56,
        //   decoration: BoxDecoration(
        //     color: Color(0xFF0d0d0d),
        //   ),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [
        //       InkWell(
        //         onTap: () {
        //           Navigator.pop(context);
        //         },
        //         child: Column(
        //           children: [
        //             Icon(
        //               Icons.home,
        //               color: Color(0xFF5f5f5f),
        //             ),
        //             Text(
        //               "Home",
        //               style: TextStyle(
        //                   fontSize: 12,
        //                   fontWeight: FontWeight.w400,
        //                   color: Color(0xFF5f5f5f)),
        //             )
        //           ],
        //         ),
        //       ),
        //       InkWell(
        //         onTap: () {
        //           Navigator.pop(context,
        //               MaterialPageRoute(builder: (context) => Mymusic()));
        //         },
        //         child: Column(
        //           children: [
        //             Icon(
        //               Icons.music_note,
        //               color: Color(0xFF606060),
        //             ),
        //             Text(
        //               "My Music",
        //               style: TextStyle(
        //                   fontSize: 12,
        //                   fontWeight: FontWeight.w400,
        //                   color: Color(0xFF606060)),
        //             )
        //           ],
        //         ),
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
        //           Navigator.pop(context,
        //               MaterialPageRoute(builder: (context) => Hellotunes()));
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
        //                 color: Color(0xFF303030),
        //               ),
        //             ),
        //             Text(
        //               "Hellotunes",
        //               style: TextStyle(
        //                   fontSize: 12,
        //                   fontWeight: FontWeight.w400,
        //                   color: Color(0xFF515151)),
        //             )
        //           ],
        //         ),
        //       ),
        //       Column(
        //         children: [
        //           Stack(
        //             children: [
        //               Icon(
        //                 Icons.person,
        //                 color: Color(0xFFf9f9f9),
        //               ),
        //               Positioned(
        //                 top: 3,
        //                 right: 3,
        //                 child: Icon(
        //                   Icons.settings,
        //                   size: 8,
        //                   color: Color(0xFFf9f9f9),
        //                 ),
        //               ),
        //             ],
        //           ),
        //           Text(
        //             "settings",
        //             style: TextStyle(
        //                 fontSize: 12,
        //                 fontWeight: FontWeight.w400,
        //                 color: Color(0xFFececec)),
        //           )
        //         ],
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
