import 'package:facebook/screens/home/fragments/home_fragments/home_fragments.dart';
import 'package:facebook/utils/appstore.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<Widget> fragmentList = const [
    HomeFragments()
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStore.colorWhite,
      body: fragmentList[currentIndex],
    );
  }
}