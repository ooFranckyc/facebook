import 'package:facebook/utils/appstore.dart';
import 'package:flutter/material.dart';

class ExploreFragment extends StatefulWidget {
  const ExploreFragment({Key? key}) : super(key: key);

  @override
  State<ExploreFragment> createState() => _ExploreFragmentState();
}

class _ExploreFragmentState extends State<ExploreFragment> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppStore.colorWhite,
      body: Center(
        child: Text(
          "Explore",
          style: TextStyle(
              color: AppStore.colorBlack,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
