import 'package:facebook/utils/appstore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessengerFragment extends StatefulWidget {
  const MessengerFragment({Key? key}) : super(key: key);

  @override
  State<MessengerFragment> createState() => _MessengerFragmentState();
}

class _MessengerFragmentState extends State<MessengerFragment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Text(
                "Chats",
                style: TextStyle(
                    color: AppStore.colorPrimary,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: AppStore.colorPrimary,
                size: 30,
              )
            ],
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.mode_edit_rounded,
                size: 25,
                color: AppStore.colorPrimary,
              ),
            )
          ],
          backgroundColor: AppStore.colorWhite,
        ),
        backgroundColor: AppStore.colorWhite,
        body: SingleChildScrollView(child: Column()));
  }
}
