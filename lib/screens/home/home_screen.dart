import 'package:flutter/material.dart';
import 'package:inter_down/screens/blog/blog_screen.dart';
import 'package:inter_down/screens/explorar/explorar_screen.dart';

import '../../style_guide.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/Home";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: _page);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: BouncingScrollPhysics(),
        onPageChanged: (newpage) {
          setState(() {
            this._page = newpage;
          });
        },
        children: [
          ExplorarScreen(),
          BlogScreen(),
          ExplorarScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: branco,
        currentIndex: _page,
        onTap: (index) {
          this._pageController.animateToPage(
                index,
                duration: Duration(milliseconds: 500),
                curve: Curves.fastOutSlowIn,
              );
        },
        selectedItemColor: azulEscuro,
        unselectedItemColor: azulEscuro.withOpacity(0.40),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.explore_rounded),
            icon: Icon(Icons.explore_outlined),
            label: "Explorar",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.forum_rounded),
            icon: Icon(Icons.forum_outlined),
            label: "Blog",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.video_library_rounded),
            icon: Icon(Icons.video_library_outlined),
            label: "Videos",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call, color: branco),
            label: "",
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          _page == 0 ? Icons.search_rounded : Icons.filter_alt_rounded,
          size: 28,
        ),
        onPressed: () => Navigator.pushNamed(context, HomeScreen.routeName),
        backgroundColor: azulEscuro,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
