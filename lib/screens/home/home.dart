import 'package:facebook/screens/home/fragments/explore_fragment/explore_fragment.dart';
import 'package:facebook/screens/home/fragments/home_fragment/home_fragment.dart';
import 'package:facebook/screens/home/fragments/messenger_fragment/messenger_fragment.dart';
import 'package:facebook/screens/home/fragments/notification/notification.dart';
import 'package:facebook/screens/home/fragments/profile_fragment/profile_fragment.dart';
import 'package:facebook/utils/appstore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> fragmentList = const [
    HomeFragment(),
    ExploreFragment(),
    MessengerFragment(),
    NotificationFragment(),
    ProfileFragment()
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStore.colorWhite,
      body: fragmentList[currentIndex],
      bottomNavigationBar: Container(
        height: 60,
        color: AppStore.colorWhite,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: (() {
                  setState(() {
                    currentIndex = 0;
                  });
                }),
                icon: Icon(
                  Icons.home_rounded,
                  color: currentIndex == 0
                      ? AppStore.colorPrimary
                      : AppStore.colorGrey,
                  size: 33,
                )),
            IconButton(
                onPressed: (() {
                  setState(() {
                    currentIndex = 1;
                  });
                }),
                icon: Icon(
                  Icons.dashboard_rounded,
                  color: currentIndex == 1
                      ? AppStore.colorPrimary
                      : AppStore.colorGrey,
                  size: 28,
                )),
            IconButton(
                onPressed: (() {
                  setState(() {
                    currentIndex = 2;
                  });
                }),
                icon: Image.asset(
                  currentIndex == 2
                      ? 'assets/icons/messenger_active.png'
                      : 'assets/icons/messenger_no_activate.png',
                  width: 25,
                  height: 25,
                )),
            IconButton(
                onPressed: (() {
                  setState(() {
                    currentIndex = 3;
                  });
                }),
                icon: Icon(
                  currentIndex == 3
                      ? CupertinoIcons.bell_fill
                      : CupertinoIcons.bell,
                  color: currentIndex == 3
                      ? AppStore.colorPrimary
                      : AppStore.colorGrey,
                  size: 28,
                )),
            GestureDetector(
              onTap: () {
                setState(() {
                  setState(() {
                    currentIndex = 4;
                  });
                });
              },
              child: Container(
                width: 33,
                height: 33,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: AppStore.colorWhiteBelge,
                    border: Border.all(
                        width: currentIndex == 4 ? 1.10 : 0,
                        color: currentIndex == 4
                            ? AppStore.colorPrimary
                            : AppStore.colorTransparent),
                    shape: BoxShape.circle,
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/icons/user.jpg'))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
