import 'dart:developer';

import 'package:facebook/utils/animations/transition.dart';
import 'package:facebook/utils/appstore.dart';
import 'package:facebook/utils/widgets/divider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';

class MyGroups extends StatefulWidget {
  const MyGroups({Key? key}) : super(key: key);

  @override
  State<MyGroups> createState() => _MyGroupsState();
}

class _MyGroupsState extends State<MyGroups> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const FaceBookDivider(),
          groupPinned(),
          const FaceBookDivider(),
          allUserGroupsParticipant()
        ],
      ),
    );
  }

  // all user groups
  Widget allUserGroupsParticipant() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: double.infinity,
        color: AppStore.colorWhite,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        "All Groups",
                        style: TextStyle(
                            color: AppStore.colorBlack,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "26",
                        style: TextStyle(
                            color: AppStore.colorGrey,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  GestureDetector(
                      onTap: () {
                        // show all pinned group
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            "Recently Joinded",
                            style: TextStyle(
                                color: AppStore.colorPrimary,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 5),
                          Icon(
                            Icons.swipe_down,
                            size: 20,
                            color: AppStore.colorPrimary,
                          )
                        ],
                      )),
                ],
              ),
              const SizedBox(height: 15),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  children: const [
                    // for the best performace, use a map<String, String> for save the value
                    GroupsItem(
                        title: "Minimalism",
                        description:
                            "With a world full of fascialing destinations, choosing the perfect vacation spot can present a challenge. That's why we used",
                        timeAgo: "15 minutes ago"),
                    GroupsItem(
                        title: "My Warsaw",
                        description:
                            "With a world full of fascialing destinations, choosing the perfect vacation spot can present a challenge. That's why we used",
                        timeAgo: "14 hour ago"),
                    GroupsItem(
                        title: "Creative Media 2k17",
                        description:
                            "With a world full of fascialing destinations, choosing the perfect vacation spot can present a challenge. That's why we used",
                        timeAgo: "1 hour ago"),
                    GroupsItem(
                        title: "Best Place to travel",
                        description:
                            "With a world full of fascialing destinations, choosing the perfect vacation spot can present a challenge. That's why we used",
                        timeAgo: "4 hour ago"),
                    GroupsItem(
                        title: "Discovery Sciences",
                        description:
                            "With a world full of fascialing destinations, choosing the perfect vacation spot can present a challenge. That's why we used",
                        timeAgo: "9 minutes ago"),
                    GroupsItem(
                        title: "Ineterior Design ",
                        description:
                            "With a world full of fascialing destinations, choosing the perfect vacation spot can present a challenge. That's why we used",
                        timeAgo: "1 days ago"),
                    GroupsItem(
                        title: "Microsoft Azur Developper",
                        description:
                            "With a world full of fascialing destinations, choosing the perfect vacation spot can present a challenge. That's why we used",
                        timeAgo: "2 minutes ago"),
                    // Please remplace listview by listview.builder()
                    // for the best performace.
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // groups pinned
  Widget groupPinned() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          width: double.infinity,
          height: 200,
          color: AppStore.colorWhite,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Pinnded Groups",
                      style: TextStyle(
                          color: AppStore.colorBlack,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    GestureDetector(
                      onTap: () {
                        // show all pinned group
                      },
                      child: const Text(
                        "Edit",
                        style: TextStyle(
                            color: AppStore.colorPrimary,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                const GroupPinndedList(),
              ],
            ),
          ),
        ));
  }
}

class GroupsItem extends StatelessWidget {
  final String title;
  final String description;
  final String timeAgo;
  const GroupsItem(
      {Key? key,
      required this.title,
      required this.description,
      required this.timeAgo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Bounce(
      duration: const Duration(milliseconds: 180),
      onPressed: () {
        Navigator.push(
            context,
            SlideTransitionRightToLeft(BuildTargetGroupScreen(
                groupName: title, groupDescription: description)));
      },
      child: Container(
          width: double.infinity,
          height: 85,
          color: Colors.white,
          alignment: Alignment.center,
          child: Row(
            children: [
              Container(
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppStore.colorWhiteBelge),
              ),
              const SizedBox(width: 15),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        color: AppStore.colorBlack,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    "updated $timeAgo",
                    style: const TextStyle(
                        color: AppStore.colorGrey,
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              )
            ],
          )),
    );
  }
}

// groups pinned list
class GroupPinndedList extends StatefulWidget {
  const GroupPinndedList({Key? key}) : super(key: key);

  @override
  State<GroupPinndedList> createState() => _GroupPinndedListState();
}

class _GroupPinndedListState extends State<GroupPinndedList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      color: AppStore.colorWhite,
      padding: const EdgeInsets.all(0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        children: const [
          GroupBoxLook(title: "Behance"),
          GroupBoxLook(title: "Flutter\ndevelopper"),
          GroupBoxLook(title: "Freelance\n& Graphic"),
          GroupBoxLook(title: "UI/UX\nDesign P..."),
          GroupBoxLook(title: "Best\nArchitect.."),
          GroupBoxLook(title: "SYFY"),
        ],
      ),
    );
  }
}

class GroupBoxLook extends StatelessWidget {
  final String title;
  const GroupBoxLook({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                color: AppStore.colorWhiteBelge,
                borderRadius: BorderRadius.circular(12)),
          ),
          const SizedBox(height: 5),
          Text(
            title,
            style: const TextStyle(
                color: AppStore.colorGrey,
                fontSize: 14,
                fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}

class BuildTargetGroupScreen extends StatefulWidget {
  final String groupName;
  final String groupDescription;
  const BuildTargetGroupScreen(
      {Key? key, required this.groupName, required this.groupDescription})
      : super(key: key);

  @override
  State<BuildTargetGroupScreen> createState() => _BuildTargetGroupScreenState();
}

class _BuildTargetGroupScreenState extends State<BuildTargetGroupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: 380,
              color: AppStore.colorWhiteBelge,
            ),
            const SizedBox(height: 20),
            Text(
              widget.groupName,
              style: const TextStyle(
                  color: AppStore.colorBlack,
                  decoration: TextDecoration.none,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 15),
            Text(
              widget.groupDescription,
              style: const TextStyle(
                  color: AppStore.colorBlack,
                  decoration: TextDecoration.none,
                  fontSize: 15,
                  letterSpacing: .1,
                  fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 20),
            Bounce(
              duration: const Duration(milliseconds: 180),
              onPressed: () {
                log("Group Joined");
              },
              child: Container(
                width: double.infinity,
                height: 60,
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: AppStore.colorPrimary,
                    borderRadius: BorderRadius.circular(12)),
                child: const Text(
                  "Join group",
                  style: TextStyle(
                      color: AppStore.colorWhite,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            const SizedBox(height: 25),
            const Divider(
                height: 1, thickness: 2, color: AppStore.colorWhiteBelge),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Icon(CupertinoIcons.group,
                          size: 30, color: AppStore.colorGrey),
                      SizedBox(width: 10),
                      Text(
                        "255.6K members  * 37 friends",
                        style: TextStyle(color: AppStore.colorGrey),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 25,
                        height: 25,
                        margin: const EdgeInsets.only(left: 10),
                        decoration: const BoxDecoration(
                            color: AppStore.colorWhiteBelge,
                            shape: BoxShape.circle),
                      ),
                      Container(
                        width: 25,
                        height: 25,
                        decoration: const BoxDecoration(
                            color: AppStore.colorWhiteBelge,
                            shape: BoxShape.circle),
                      ),
                      Container(
                        width: 25,
                        height: 25,
                        decoration: const BoxDecoration(
                            color: AppStore.colorWhiteBelge,
                            shape: BoxShape.circle),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 1),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(CupertinoIcons.doc_chart,
                      size: 25, color: AppStore.colorGrey),
                  SizedBox(width: 10),
                  Text(
                    "1,483 post * 17 new today",
                    style: TextStyle(color: AppStore.colorGrey),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.web_stories,
                      size: 25, color: AppStore.colorGrey),
                  const SizedBox(width: 10),
                  Bounce(
                    duration: const Duration(milliseconds: 180),
                    onPressed: () {
                      // open device browser with you link
                    },
                    child: const Text("www.bestravel.com",
                        style: TextStyle(
                            color: AppStore.colorPrimary,
                            fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 25,
                    height: 25,
                    decoration: const BoxDecoration(
                        color: AppStore.colorPrimary, shape: BoxShape.circle),
                    alignment: Alignment.center,
                    child: const Text(
                      "!",
                      style: TextStyle(
                          color: AppStore.colorWhite,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Bounce(
                    duration: const Duration(milliseconds: 180),
                    onPressed: () {
                      // open device browser with you link
                    },
                    child: const Text(
                      "See more info",
                      style: TextStyle(
                          color: AppStore.colorPrimary,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            const FaceBookDivider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        "Photos",
                        style: TextStyle(
                            color: AppStore.colorBlack,
                            fontSize: 17,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "879",
                        style: TextStyle(
                            color: AppStore.colorGrey,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  GestureDetector(
                      onTap: () {
                        // show all pinned group
                      },
                      child: Transform.rotate(
                        angle: 110,
                        child: const Icon(
                          CupertinoIcons.back,
                          size: 25,
                          color: AppStore.colorGrey,
                        ),
                      )),
                ],
              ),
            ),
            // primary photo for the groups.
            SizedBox(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                children: [
                  photoCard(),
                  photoCard(),
                  photoCard(),
                  photoCard(),
                  photoCard(),
                  photoCard(),
                  photoCard(),
                  photoCard(),
                  photoCard(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget photoCard() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        width: 120,
        height: 120,
        margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        decoration: BoxDecoration(
            color: AppStore.colorWhiteBelge,
            borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
