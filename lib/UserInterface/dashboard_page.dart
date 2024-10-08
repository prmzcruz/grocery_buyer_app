import 'dart:async';
import 'package:buyer_app/UserInterface/Home/home_page.dart';
import 'package:buyer_app/UserInterface/Location/map_page.dart';
import 'package:buyer_app/UserInterface/Notification/nofication_page.dart';
import 'package:buyer_app/UserInterface/Profile/profile_page.dart';
import 'package:buyer_app/UserInterface/Search/search_page.dart';
import 'package:buyer_app/Utility/CommonColor.dart';
import 'package:buyer_app/utility/Colors.dart';
import 'package:fancy_bottom_navigation_2/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';

StreamController<String> streamController = StreamController<String>.broadcast();

class dashboard_Page extends StatefulWidget {
  const dashboard_Page({super.key});

  @override
  State<dashboard_Page> createState() => _dashboard_PageState(streamController.stream);
}

class _dashboard_PageState extends State<dashboard_Page> {
  Widget? _child;
  StreamSubscription? streamSubscription;
  final Stream<String> stream;
  _dashboard_PageState(this.stream);
  int currentPage = 2;
  PageController selectPage = PageController(initialPage: 2); // Initialize to home page
  PageController? _pageController;


  List<Widget> tabPages = [
    const map_Page(),
    const search_Page(),
    const HomePage(),
    const profile_Page(),
    const notification_Page(),
  ];

  @override
  void initState() {
    super.initState();

    // Set the initial child to home_page
    _child = const HomePage();

    // Subscribe to stream events
    streamSubscription = stream.listen((index) {
      if (index == "1") {
        selectPage.jumpToPage(0);
      } else if (index == "2") {
        selectPage.jumpToPage(1);
      } else if (index == "3") {
        selectPage.jumpToPage(2);
      } else if (index == "4") {
        selectPage.jumpToPage(3);
      } else if (index == "5") {
        selectPage.jumpToPage(4);
      }
    });
  }

  void onTabTapped(int index) {
    _pageController?.animateToPage(index,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  @override
  void dispose() {
    streamSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      body: SafeArea(child: _child!), // Display the current child widget
      bottomNavigationBar: FancyBottomNavigation(
        circleColor: HexColor(Colorscommon.greenlite),
        inactiveIconColor: HexColor(Colorscommon.greenlite),
        initialSelection: currentPage,
        onTabChangedListener: (index) {
          setState(() {
            currentPage = index;
            _handleNavigationChange(index);
          });
        },
        tabs: [
           TabData(
            iconData: Icons.location_on,
            title: "Location",
          ),
           TabData(
            iconData: Icons.search,
            title: "Search",
          ),
           TabData(
            iconData: Icons.home,
            title: "Home",
          ),
           TabData(
            iconData: Icons.person,
            title: "Profile",
          ),
           TabData(
            iconData: Icons.notifications,
            title: "Notification",
          ),
        ],
      ),
    );
  }

  void _handleNavigationChange(int index) {
    setState(() {
      // Update the current child based on the selected index
      switch (index) {
        case 0:
          _child = const map_Page();
          break;
        case 1:
          _child = const search_Page();
          break;
        case 2:
          _child = const HomePage(); // Ensure home_page is shown for index 2
          break;
        case 3:
          _child = const profile_Page();
          break;
        case 4:
          _child = const notification_Page();
          break;
      }

      _child = AnimatedSwitcher(
        switchInCurve: Curves.easeOut,
        switchOutCurve: Curves.easeIn,
        duration: const Duration(milliseconds: 500),
        child: _child,
      );
    });
  }
}
