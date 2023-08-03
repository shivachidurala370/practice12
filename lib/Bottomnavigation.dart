import 'package:flutter/material.dart';
import 'package:practice12/Home_page.dart';
import 'package:practice12/Mymusic.dart';
import 'package:practice12/hello_tunes.dart';
import 'package:practice12/settings.dart';

class Bottomnavigation extends StatefulWidget {
  const Bottomnavigation({super.key});

  @override
  State<Bottomnavigation> createState() => _BottomnavigationState();
}

final tabs = [Homepage(), Mymusic(), Hellotunes(), Settings()];

class _BottomnavigationState extends State<Bottomnavigation> {
  int _selectedindex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  final tabs = [Homepage(), Mymusic(), Hellotunes(), Settings()];

  // @override
  // void initState() {
  //   super.initState();
  //   setState(() {
  //     //_selectedIndex = widget.activeIndex;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        //backgroundColor: Colors.black87,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.black87),
          BottomNavigationBarItem(
              icon: Icon(Icons.music_note), label: "Mymusic"),
          BottomNavigationBarItem(
              icon: Icon(Icons.queue_music_outlined), label: "Helootunes"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "settings"),
        ],
        currentIndex: _selectedindex,
        selectedItemColor: Colors.orange,

        unselectedLabelStyle:
            const TextStyle(color: Colors.white, fontSize: 14),
        showUnselectedLabels: true,

        onTap: _onItemTapped,
      ),
    );
  }
}
