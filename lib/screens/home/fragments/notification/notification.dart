import 'package:facebook/screens/home/fragments/notification/widgets/interact_notification.dart';
import 'package:facebook/screens/home/fragments/notification/widgets/notifiation_usr_cmt.dart';
import 'package:facebook/utils/appstore.dart';
import 'package:facebook/utils/widgets/divider.dart';
import 'package:flutter/material.dart';

class NotificationFragment extends StatefulWidget {
  const NotificationFragment({Key? key}) : super(key: key);

  @override
  State<NotificationFragment> createState() => _NotificationFragmentState();
}

class _NotificationFragmentState extends State<NotificationFragment> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppStore.colorWhite,
          elevation: 0,
          centerTitle: false,
          title: const Text(
            "Notifications",
            style: TextStyle(
                color: AppStore.colorPrimary,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: AppStore.colorWhite,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // people invitation all in one
              peopleInvitationAllInOne(),
              groupInvitationAllInOne(),
              const SizedBox(height: 10),
              const Divider(
                  height: 1, thickness: 2, color: AppStore.colorWhiteBelge),
              const SizedBox(height: 5),
              // navigate user tools
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: Row(
                      children: [
                        Expanded(
                          child: DefaultTabController(
                            length: 3,
                            initialIndex: currentIndex,
                            child: const TabBar(
                                padding: EdgeInsets.zero,
                                labelPadding: EdgeInsets.zero,
                                indicatorPadding: EdgeInsets.zero,
                                indicatorSize: TabBarIndicatorSize.label,
                                indicatorColor: AppStore.colorPrimary,
                                indicatorWeight: 3,
                                labelColor: AppStore.colorBlack,
                                labelStyle: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                                unselectedLabelStyle: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 13),
                                unselectedLabelColor: AppStore.colorGrey,
                                tabs: [
                                  Tab(
                                    text: "All",
                                  ),
                                  Tab(
                                    text: "Liked",
                                  ),
                                  Tab(
                                    text: "Comments",
                                  ),
                                ]),
                          ),
                        ),
                        const SizedBox(width: 125), // spacer
                      ],
                    )),
              ),
              const FaceBookDivider(),
              // news notification, by the mockup, the max notifications size is 3
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Text(
                    "News",
                    style: TextStyle(
                        color: AppStore.colorGrey,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  )),
              const NotificationUserComment(),
              // contact user push notifiction
              const InterractNotification(
                  debugNotifiType: "like",
                  userInterractNotificationSender: "Jeane Cooper",
                  when: "Today at 16:45"),
              const InterractNotification(
                  debugNotifiType: "love",
                  userInterractNotificationSender: "Jeane Cooper",
                  when: "Today at 16:45"),
              const SizedBox(height: 10),
              const Divider(
                  height: 1, thickness: 2, color: AppStore.colorWhiteBelge),
              const SizedBox(height: 5),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Text(
                    "Eartier",
                    style: TextStyle(
                        color: AppStore.colorGrey,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  )),
              const NotificationUserComment(),
              const NotificationUserComment(),
              const NotificationUserComment(),
              const NotificationUserComment(),
            ],
          ),
        ));
  }

  Widget groupInvitationAllInOne() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: const BoxDecoration(
                    color: AppStore.colorWhiteBelge, shape: BoxShape.circle),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Invitations to a group",
                    style: TextStyle(
                        color: AppStore.colorBlack,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ],
          ),
          Container(
            width: 50,
            height: 30,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Color(0xffF23244)),
            child: Text(
              3.toString(),
              style: const TextStyle(
                  color: AppStore.colorWhite,
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }

  Widget peopleInvitationAllInOne() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 55,
                height: 55,
                decoration: const BoxDecoration(
                    color: AppStore.colorWhiteBelge, shape: BoxShape.circle),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Friends Request",
                    style: TextStyle(
                        color: AppStore.colorBlack,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "Alina and 136 other people",
                    style: TextStyle(
                        color: AppStore.colorGrey,
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ],
          ),
          Container(
            width: 50,
            height: 30,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xffF23244)),
            child: Text(
              137.toString(),
              style: const TextStyle(
                  color: AppStore.colorWhite,
                  fontSize: 11,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
