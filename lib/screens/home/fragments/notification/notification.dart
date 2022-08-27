import 'package:facebook/utils/appstore.dart';
import 'package:flutter/material.dart';

class NotificationFragment extends StatefulWidget {
  const NotificationFragment({Key? key}) : super(key: key);

  @override
  State<NotificationFragment> createState() => _NotificationFragmentState();
}

class _NotificationFragmentState extends State<NotificationFragment> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppStore.colorWhite,
      body: Center(
        child: Text(
          "Notifications",
          style: TextStyle(
              color: AppStore.colorBlack,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
