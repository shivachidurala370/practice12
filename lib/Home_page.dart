import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

List<String> images = [
  "assets/adhipurush.jpg",
  "assets/arjunreddy.jpg",
  "assets/babysong.jpg",
  "assets/srivalli.jpeg"
];
List<String> songtext = [
  "Jai Sri Ram From Adhipurush",
  "Emitemito From arjun Reddy",
  "O Rendu prema From Baby",
  "Srivalli From Pushpa"
];
List<String> subtext = ["1", "2", "3", "4"];

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                                color: Color(0xFF0d0d0d),
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage("assets/wynk.png"),
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.search,
                                size: 30,
                                color: Color(0xFFffffff),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Stack(
                                children: [
                                  const Icon(
                                    Icons.notifications_none,
                                    size: 30,
                                    color: Color(0xFFffffff),
                                  ),
                                  Positioned(
                                    top: 0,
                                    right: 3,
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 10,
                                      width: 10,
                                      decoration: const BoxDecoration(
                                        color: Color(0xFFef5460),
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Text(
                                        "1",
                                        style: TextStyle(fontSize: 8),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                      const Text(
                        "Featured Today",
                        style: TextStyle(
                            fontSize: 24,
                            color: Color(0xFFe0e0e0),
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Container(
                        height: 160,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: const Color(0xFFffffff),
                            borderRadius: BorderRadius.circular(16),
                            image: const DecorationImage(
                              image: AssetImage("assets/baby.jpg"),
                              fit: BoxFit.cover,
                            )),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Your Personalized Mixes",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFdbdbdb)),
                          ),
                          Text(
                            "See all",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                color: Color(0xFFcbcbcb)),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 170,
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
                                        height: 140,
                                        width: 140,
                                        decoration: BoxDecoration(
                                          // color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(16),
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
                                                  const Column(
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
                                                  const SizedBox(
                                                    width: 64,
                                                  ),
                                                  Text(
                                                    subtext[index],
                                                    style: const TextStyle(
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
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      SizedBox(
                                        width: 120,
                                        child: Text(
                                          songtext[index],
                                          style: const TextStyle(
                                              fontSize: 10,
                                              overflow: TextOverflow.ellipsis,
                                              fontWeight: FontWeight.w300,
                                              color: Color(0xFFdedede)),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              );
                            },
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return Container(
                                width: 12,
                              );
                            },
                            itemCount: images.length),
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Recently Played",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFd5d5d5)),
                          ),
                          Text(
                            "See all",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                color: Color(0xFFd5d5d5)),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
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
                                        height: 100,
                                        width: 100,
                                        decoration: BoxDecoration(
                                          // color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          image: DecorationImage(
                                            image: AssetImage(images[index]),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        child: const Stack(
                                          children: [
                                            Positioned(
                                                bottom: 2,
                                                left: 5,
                                                child: Icon(
                                                  Icons.play_circle,
                                                  size: 30,
                                                  color: Color(0xFFe9eaeb),
                                                )),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        songtext[index],
                                        style: const TextStyle(
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
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
