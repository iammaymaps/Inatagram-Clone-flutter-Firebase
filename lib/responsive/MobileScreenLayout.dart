import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_firebase/ulitls/colors.dart';
import 'package:instagram_firebase/ulitls/global.dart';

class MobileScreenLayout extends StatefulWidget {
  const MobileScreenLayout({super.key});

  @override
  State<MobileScreenLayout> createState() => _MobileScreenLayoutState();
}

class _MobileScreenLayoutState extends State<MobileScreenLayout> {
  int _page = 0;

  late PageController pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }

  void navigationTAB(int page) {
    pageController.jumpToPage(page);
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: homeScreenItems,
        controller: pageController,
        onPageChanged: onPageChanged,
      ),
      bottomNavigationBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
                color: _page == 0 ? primaryColor : secondaryColor),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,
                color: _page == 1 ? primaryColor : secondaryColor),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle,
                color: _page == 2 ? primaryColor : secondaryColor),
            label: "Add Post",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite,
                color: _page == 3 ? primaryColor : secondaryColor),
            label: "favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,
                color: _page == 4 ? primaryColor : secondaryColor),
            label: "person",
          ),
        ],
        onTap: navigationTAB,
      ),
    );
  }
}
