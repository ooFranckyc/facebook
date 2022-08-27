import 'package:facebook/utils/appstore.dart';
import 'package:flutter/material.dart';

class ProfileFragment extends StatefulWidget {
  const ProfileFragment({Key? key}) : super(key: key);

  @override
  State<ProfileFragment> createState() => _ProfileFragmentState();
}

class _ProfileFragmentState extends State<ProfileFragment> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppStore.colorWhite,
      body: Center(
        child: Text(
          "Profile",
          style: TextStyle(
              color: AppStore.colorBlack,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
