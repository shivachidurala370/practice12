import 'package:flutter/material.dart';
import 'package:practice12/Bottomnavigation.dart';
import 'package:practice12/Mymusic.dart';
import 'package:practice12/hello_tunes.dart';
import 'package:practice12/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Bottomnavigation(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.
//
//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//   List<String> images = [
//     "assets/adhipurush.jpg",
//     "assets/arjunreddy.jpg",
//     "assets/babysong.jpg",
//     "assets/srivalli.jpeg"
//   ];
//   List<String> songtext = [
//     "Jai Sri Ram From Adhipurush",
//     "Emitemito From arjun Reddy",
//     "O Rendu prema From Baby",
//     "Srivalli From Pushpa"
//   ];
//   List<String> subtext = ["1", "2", "3", "4"];
//
//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Color(0xFF0d0d0d),
//         body: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Container(
//                     height: 75,
//                     width: 75,
//                     decoration: BoxDecoration(
//                         color: Color(0xFF0d0d0d),
//                         shape: BoxShape.circle,
//                         image: DecorationImage(
//                           image: AssetImage("assets/wynk.png"),
//                           fit: BoxFit.cover,
//                         )),
//                   ),
//                   Row(
//                     children: [
//                       Icon(
//                         Icons.search,
//                         size: 30,
//                         color: Color(0xFFffffff),
//                       ),
//                       SizedBox(
//                         width: 16,
//                       ),
//                       Stack(
//                         children: [
//                           Icon(
//                             Icons.notifications_none,
//                             size: 30,
//                             color: Color(0xFFffffff),
//                           ),
//                           Positioned(
//                             top: 0,
//                             right: 3,
//                             child: Container(
//                               height: 10,
//                               width: 10,
//                               decoration: BoxDecoration(
//                                 color: Color(0xFFef5460),
//                                 shape: BoxShape.circle,
//                               ),
//                             ),
//                           )
//                         ],
//                       )
//                     ],
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 22,
//               ),
//               Text(
//                 "Featured Today",
//                 style: TextStyle(
//                     fontSize: 24,
//                     color: Color(0xFFe0e0e0),
//                     fontWeight: FontWeight.bold),
//               ),
//               SizedBox(
//                 height: 16,
//               ),
//               Container(
//                 height: 160,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                     color: Color(0xFFffffff),
//                     borderRadius: BorderRadius.circular(16),
//                     image: DecorationImage(
//                       image: AssetImage("assets/baby.jpg"),
//                       fit: BoxFit.cover,
//                     )),
//               ),
//               SizedBox(
//                 height: 30,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     "Your Personalized Mixes",
//                     style: TextStyle(
//                         fontSize: 22,
//                         fontWeight: FontWeight.bold,
//                         color: Color(0xFFdbdbdb)),
//                   ),
//                   Text(
//                     "See all",
//                     style: TextStyle(
//                         fontSize: 14,
//                         fontWeight: FontWeight.w300,
//                         color: Color(0xFFcbcbcb)),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Container(
//                 height: 170,
//                 child: ListView.separated(
//                     scrollDirection: Axis.horizontal,
//                     itemBuilder: (BuildContext context, int index) {
//                       return Stack(
//                         children: [
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Container(
//                                 height: 140,
//                                 width: 140,
//                                 decoration: BoxDecoration(
//                                   // color: Colors.white,
//                                   borderRadius: BorderRadius.circular(16),
//                                   image: DecorationImage(
//                                     image: AssetImage(images[index]),
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                                 child: Stack(
//                                   children: [
//                                     Positioned(
//                                       bottom: 0,
//                                       left: 10,
//                                       child: Row(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.spaceBetween,
//                                         children: [
//                                           Column(
//                                             crossAxisAlignment:
//                                                 CrossAxisAlignment.start,
//                                             children: [
//                                               Text(
//                                                 "Your",
//                                                 style: TextStyle(
//                                                     fontSize: 16,
//                                                     fontWeight: FontWeight.w700,
//                                                     color: Color(0xFFf0f0ee)),
//                                               ),
//                                               Text(
//                                                 "Mix",
//                                                 style: TextStyle(
//                                                     fontSize: 14,
//                                                     fontWeight: FontWeight.w700,
//                                                     color: Color(0xFF90d7b7)),
//                                               )
//                                             ],
//                                           ),
//                                           SizedBox(
//                                             width: 64,
//                                           ),
//                                           Text(
//                                             subtext[index],
//                                             style: TextStyle(
//                                                 fontSize: 30,
//                                                 color: Color(0xFFececeb)),
//                                           )
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 10,
//                               ),
//                               Text(
//                                 songtext[index],
//                                 style: TextStyle(
//                                     fontSize: 10,
//                                     fontWeight: FontWeight.w300,
//                                     color: Color(0xFFdedede)),
//                               ),
//                             ],
//                           )
//                         ],
//                       );
//                     },
//                     separatorBuilder: (BuildContext context, int index) {
//                       return Container(
//                         width: 12,
//                       );
//                     },
//                     itemCount: images.length),
//               ),
//               SizedBox(
//                 height: 14,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     "Recently Played",
//                     style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                         color: Color(0xFFd5d5d5)),
//                   ),
//                   Text(
//                     "See all",
//                     style: TextStyle(
//                         fontSize: 14,
//                         fontWeight: FontWeight.w300,
//                         color: Color(0xFFd5d5d5)),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Container(
//                 height: 150,
//                 child: ListView.separated(
//                     scrollDirection: Axis.horizontal,
//                     itemBuilder: (BuildContext context, int index) {
//                       return Stack(
//                         children: [
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Container(
//                                 height: 100,
//                                 width: 100,
//                                 decoration: BoxDecoration(
//                                   // color: Colors.white,
//                                   borderRadius: BorderRadius.circular(16),
//                                   image: DecorationImage(
//                                     image: AssetImage(images[index]),
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                                 child: Stack(
//                                   children: [
//                                     Positioned(
//                                         bottom: 2,
//                                         left: 5,
//                                         child: Icon(
//                                           Icons.play_circle,
//                                           size: 30,
//                                           color: Color(0xFFe9eaeb),
//                                         )),
//                                   ],
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 10,
//                               ),
//                               Text(
//                                 songtext[index],
//                                 style: TextStyle(
//                                     fontSize: 8,
//                                     fontWeight: FontWeight.w300,
//                                     color: Color(0xFFdedede)),
//                               ),
//                             ],
//                           )
//                         ],
//                       );
//                     },
//                     separatorBuilder: (BuildContext context, int index) {
//                       return Container(
//                         width: 5,
//                       );
//                     },
//                     itemCount: images.length),
//               ),
//             ],
//           ),
//         ),
//         bottomSheet: Container(
//           padding: EdgeInsets.symmetric(horizontal: 16),
//           height: 56,
//           decoration: BoxDecoration(
//             color: Color(0xFF0d0d0d),
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Column(
//                 children: [
//                   Icon(
//                     Icons.home,
//                     color: Color(0xFFf9f9f9),
//                   ),
//                   Text(
//                     "Home",
//                     style: TextStyle(
//                         fontSize: 12,
//                         fontWeight: FontWeight.w400,
//                         color: Color(0xFFf1f1f1)),
//                   )
//                 ],
//               ),
//               Column(
//                 children: [
//                   InkWell(
//                     onTap: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (BuildContext context) => Mymusic()));
//                     },
//                     child: Icon(
//                       Icons.music_note,
//                       color: Color(0xFF5a5a5a),
//                     ),
//                   ),
//                   Text(
//                     "My Music",
//                     style: TextStyle(
//                         fontSize: 12,
//                         fontWeight: FontWeight.w400,
//                         color: Color(0xFF5a5a5a)),
//                   )
//                 ],
//               ),
//               Container(
//                 alignment: Alignment.center,
//                 height: 80,
//                 width: 80,
//                 decoration: BoxDecoration(
//                   color: Color(0xFFf45e5f),
//                   shape: BoxShape.circle,
//                 ),
//                 child: Icon(
//                   Icons.play_arrow,
//                   size: 30,
//                   color: Color(0xFFfdfdfd),
//                 ),
//               ),
//               Column(
//                 children: [
//                   InkWell(
//                     onTap: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (BuildContext cntext) => Hellotunes()));
//                     },
//                     child: Container(
//                       alignment: Alignment.center,
//                       height: 20,
//                       width: 20,
//                       decoration: BoxDecoration(
//                         color: Color(0xFF5f5f5f),
//                         shape: BoxShape.circle,
//                       ),
//                       child: Icon(
//                         Icons.music_note_outlined,
//                         size: 15,
//                         color: Color(0xFF1d1d1d),
//                       ),
//                     ),
//                   ),
//                   Text(
//                     "Hellotunes",
//                     style: TextStyle(
//                         fontSize: 12,
//                         fontWeight: FontWeight.w400,
//                         color: Color(0xFF5a5a5a)),
//                   )
//                 ],
//               ),
//               InkWell(
//                 onTap: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => Settings()));
//                 },
//                 child: Column(
//                   children: [
//                     Stack(
//                       children: [
//                         Icon(
//                           Icons.person,
//                           color: Color(0xFF606060),
//                         ),
//                         Positioned(
//                           top: 3,
//                           right: 3,
//                           child: Icon(
//                             Icons.settings,
//                             size: 8,
//                             color: Color(0xFF5e5e5e),
//                           ),
//                         ),
//                       ],
//                     ),
//                     Text(
//                       "Settings",
//                       style: TextStyle(
//                           fontSize: 12,
//                           fontWeight: FontWeight.w400,
//                           color: Color(0xFF4f4f4f)),
//                     )
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
