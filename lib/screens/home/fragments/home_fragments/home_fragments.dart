import 'package:facebook/utils/appstore.dart';
import 'package:flutter/material.dart';

class HomeFragments extends StatefulWidget {
  const HomeFragments({Key? key}) : super(key: key);

  @override
  State<HomeFragments> createState() => _HomeFragmentsState();
}

class _HomeFragmentsState extends State<HomeFragments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: AppStore.colorWhite,
      body: SingleChildScrollView(
        child: Column(),
      ),
    );
  }
}