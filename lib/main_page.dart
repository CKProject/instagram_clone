import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/home_page/home_page.dart';
import 'package:instagram_clone/home_page/widgets/home_action.dart';
import 'package:instagram_clone/home_page/widgets/home_leading.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;
  final List<Widget> selectedPage = [
    const HomePage(),
    Container(),
    Container(),
    Container(),
    Container(),
  ];

  onPageTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: myAppBar(),
      body: selectedPage[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        onTap: onPageTapped,
        items: [
          const BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("asset/images/home.png"),
            ),
            activeIcon: ImageIcon(
              AssetImage("asset/images/home_f.png"),
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("asset/images/search.png"),
            ),
            activeIcon: ImageIcon(
              AssetImage("asset/images/search_f.png"),
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("asset/images/reals.png"),
            ),
            activeIcon: ImageIcon(
              AssetImage("asset/images/reals_f.png"),
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("asset/images/shop.png"),
            ),
            activeIcon: ImageIcon(
              AssetImage("asset/images/shop_f.png"),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: const CircleAvatar(
              radius: 15,
              backgroundImage:
                  CachedNetworkImageProvider("https://picsum.photos/200"),
            ),
            activeIcon: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.black.withOpacity(0.6),
              child: const CircleAvatar(
                radius: 13.5,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 12,
                  backgroundImage:
                      CachedNetworkImageProvider("https://picsum.photos/200"),
                ),
              ),
            ),
            label: '',
          ),
        ],
      ),
    );
  }

  PreferredSizeWidget? myAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: leadingWidget(),
      leadingWidth: 110,
      actions: [
        actionWidget(),
      ],
    );
  }

  Widget leadingWidget() {
    return selectedIndex == 0 ? const HomeLeading() : Container();
  }

  Widget actionWidget() {
    return selectedIndex == 0 ? const HomeAction() : Container();
  }
}
