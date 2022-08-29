import 'package:facebook/utils/appstore.dart';
import 'package:flutter/material.dart';

class GroupManage extends StatefulWidget {
  const GroupManage({Key? key}) : super(key: key);

  @override
  State<GroupManage> createState() => _GroupManageState();
}

class _GroupManageState extends State<GroupManage> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Group Manage", style: TextStyle(
      color: AppStore.colorBlack,
      fontSize: 20
    ),),);
  }
}