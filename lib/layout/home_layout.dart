import 'package:flutter/material.dart';
import 'package:movie/screens/browse_sscreen/browse_screen.dart';
import 'package:movie/screens/home_screen/home_screen.dart';
import 'package:movie/screens/search_screen/search_screen.dart';
import 'package:movie/screens/watchlist_screen/watch_list_screen.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  static int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          selectedIndex = index;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.search,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: ImageIcon(AssetImage('assets/images/browse_bg.png')),
            label: 'Browse',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: ImageIcon(AssetImage('assets/images/watch.png')),
            label: 'WactchList',
          ),
        ],
      ),
      body: Tabes[selectedIndex],
    );
  }

  List<Widget> Tabes = [
    HomeScreen(),
    SearchScreen(),
    BrowseScreen(),
    WatchListScreen()
  ];
}
