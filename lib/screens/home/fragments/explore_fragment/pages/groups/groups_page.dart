import 'package:facebook/screens/home/fragments/explore_fragment/pages/groups/fragments/group_manage.dart';
import 'package:facebook/screens/home/fragments/explore_fragment/pages/groups/fragments/my_groups.dart';
import 'package:facebook/utils/appstore.dart';
import 'package:facebook/utils/widgets/search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GroupsPage extends StatefulWidget {
  const GroupsPage({Key? key}) : super(key: key);

  @override
  State<GroupsPage> createState() => _GroupsPageState();
}

class _GroupsPageState extends State<GroupsPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: currentIndex,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppStore.colorWhite,
          elevation: 0,
          automaticallyImplyLeading: false,
          leadingWidth: 30,
          leading: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                CupertinoIcons.back,
                color: AppStore.colorPrimary,
                size: 30,
              ),
            ),
          ),
          title: const SearchBarStackIcon(
            hintText: "Search Groups",
            icon: CupertinoIcons.search,
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                CupertinoIcons.add_circled,
                color: AppStore.colorPrimary,
                size: 30,
              ),
            ),
          ],
          bottom: const TabBar(
              padding: EdgeInsets.zero,
              labelPadding: EdgeInsets.zero,
              indicatorPadding: EdgeInsets.zero,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: AppStore.colorPrimary,
              indicatorWeight: 3,
              labelColor: AppStore.colorBlack,
              labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              unselectedLabelStyle:
                  TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
              unselectedLabelColor: AppStore.colorGrey,
              tabs: [
                Tab(
                  text: "My Groups",
                ),
                Tab(
                  text: "Groups Manage",
                ),
              ]),
        ),
        backgroundColor: AppStore.colorWhite,
        body: const TabBarView(
          children: [
            MyGroups(),
            GroupManage()
          ],
        ),
      ),
    );
  }
}
