import 'dart:developer';

import 'package:facebook/screens/home/fragments/home_fragment/widgets/elemetor.dart';
import 'package:facebook/screens/home/fragments/profile_fragment/widgets/pub_card.dart';
import 'package:facebook/utils/appstore.dart';
import 'package:facebook/utils/widgets/divider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';

// (c)copyright you, 2022 All right reserved
// write by ooFrancky, modify by you😊
/*
  profile_fragment.dart,
*/

class ProfileFragment extends StatefulWidget {
  const ProfileFragment({Key? key}) : super(key: key);

  @override
  State<ProfileFragment> createState() => _ProfileFragmentState();
}

class _ProfileFragmentState extends State<ProfileFragment> {
  int currentIndex = 0;
  int psrci = 0;
  bool addUser = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppStore.colorWhite,
        body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 50),
                    child: Stack(
                      children: [
                        // profile card pic cover
                        Container(
                          height: 210,
                          decoration: BoxDecoration(
                              color: AppStore.colorWhiteBelge,
                              image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://images.unsplash.com/photo-1661680934578-3a7fac489c3a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDl8Q0R3dXdYSkFiRXd8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60')),
                              borderRadius: BorderRadius.circular(12)),
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 15, top: 25),
                            child: Bounce(
                              duration: const Duration(milliseconds: 180),
                              onPressed: () {
                                // show menu
                              },
                              child: const Icon(
                                Icons.menu,
                                size: 30,
                                color: AppStore.colorGrey,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 130),
                            child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Container(
                                  width: 150,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppStore.colorWhiteBelge,
                                      border: Border.all(
                                          width: 5, color: AppStore.colorWhite),
                                      image: const DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              'assets/icons/user.jpg'))),
                                ),
                                Bounce(
                                  duration: const Duration(milliseconds: 180),
                                  onPressed: () {
                                    // take a photos
                                  },
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    alignment: Alignment.center,
                                    margin: const EdgeInsets.only(
                                        right: 3, bottom: 3),
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color: AppStore.colorBlack
                                                  .withOpacity(.15),
                                              spreadRadius: 1,
                                              blurRadius: 10,
                                              offset: const Offset(.20, .20))
                                        ],
                                        border: Border.all(
                                            width: 1,
                                            color: AppStore.colorWhiteBelge),
                                        color: AppStore.colorWhiteBelge,
                                        shape: BoxShape.circle),
                                    child: const Icon(
                                      CupertinoIcons.photo_camera_solid,
                                      size: 23,
                                      color: AppStore.colorGrey,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    )),
                const SizedBox(height: 5),
                // body user information
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        "Franck Mekoulou",
                        style: TextStyle(
                            color: AppStore.colorBlack,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "System, Software, Mobile apps developper\nMy techno : ASM, C/C++, Dart, Fluttet...\nAvaible for the new project.",
                        style: TextStyle(
                            color: AppStore.colorGrey,
                            fontWeight: FontWeight.w400,
                            fontSize: 13),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            32.toString(),
                            style: const TextStyle(
                                color: AppStore.colorBlack,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(height: 3),
                          const Text(
                            "Friends",
                            style: TextStyle(
                                color: AppStore.colorGrey,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            "1.550",
                            style: TextStyle(
                                color: AppStore.colorBlack,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 3),
                          Text(
                            "Followers",
                            style: TextStyle(
                                color: AppStore.colorGrey,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            "274",
                            style: TextStyle(
                                color: AppStore.colorBlack,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 3),
                          Text(
                            "Following",
                            style: TextStyle(
                                color: AppStore.colorGrey,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Divider(
                      height: 1,
                      thickness: 1,
                      color: AppStore.colorGrey.withOpacity(.30)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 4),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(Icons.home_filled,
                                size: 25, color: AppStore.colorGrey),
                            const SizedBox(width: 10),
                            const Text("Lives in ",
                                style: TextStyle(
                                    color: AppStore.colorGrey,
                                    fontWeight: FontWeight.w400)),
                            Bounce(
                              duration: const Duration(milliseconds: 180),
                              onPressed: () {
                                // open device browser with you link
                              },
                              child: const Text("Yaounde, Cameroon",
                                  style: TextStyle(
                                      color: AppStore.colorPrimary,
                                      fontWeight: FontWeight.bold)),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 4),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(Icons.fmd_good_outlined,
                                size: 25, color: AppStore.colorGrey),
                            const SizedBox(width: 10),
                            const Text("From in ",
                                style: TextStyle(
                                    color: AppStore.colorGrey,
                                    fontWeight: FontWeight.w400)),
                            Bounce(
                              duration: const Duration(milliseconds: 180),
                              onPressed: () {
                                // open device browser with you link
                              },
                              child: const Text("Nkolbisson, Yaounde Cameroon",
                                  style: TextStyle(
                                      color: AppStore.colorPrimary,
                                      fontWeight: FontWeight.bold)),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 4),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(Icons.brunch_dining_rounded,
                                size: 25, color: AppStore.colorGrey),
                            SizedBox(width: 10),
                            Text("Birthday: May 14",
                                style: TextStyle(
                                    color: AppStore.colorGrey,
                                    fontWeight: FontWeight.w400)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 4),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 25,
                              height: 25,
                              decoration: const BoxDecoration(
                                  color: AppStore.colorPrimary,
                                  shape: BoxShape.circle),
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
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Divider(
                      height: 1,
                      thickness: 1,
                      color: AppStore.colorGrey.withOpacity(.30)),
                ),
                const SizedBox(height: 8),
                Bounce(
                  duration: const Duration(milliseconds: 180),
                  onPressed: () {
                    log("Profile Edit config");
                  },
                  child: Container(
                    width: double.infinity,
                    height: 55,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        color: AppStore.colorWhiteBelge,
                        borderRadius: BorderRadius.circular(12)),
                    child: const Text(
                      "Edit Profile",
                      style: TextStyle(
                          color: AppStore.colorPrimary,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                const FaceBookDivider(),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Text(
                                "Photos",
                                style: TextStyle(
                                    color: AppStore.colorBlack,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(width: 5),
                              Text(
                                "375",
                                style: TextStyle(
                                    color: AppStore.colorGrey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          Bounce(
                            duration: const Duration(milliseconds: 180),
                            onPressed: () {
                              // show all photos
                              showModalBottomSheet(
                                  context: context,
                                  backgroundColor: AppStore.colorWhite,
                                  isScrollControlled: true,
                                  enableDrag: true,
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(20))),
                                  builder: (context) => galleryUserPhotos());
                            },
                            child: Transform.rotate(
                                angle: 110,
                                child: const Icon(CupertinoIcons.back,
                                    size: 30, color: AppStore.colorGrey)),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      SizedBox(
                        height: 180,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          children: [
                            Bounce(
                              duration: const Duration(milliseconds: 180),
                              onPressed: () {},
                              child: Container(
                                width: 200,
                                height: 60,
                                margin: const EdgeInsets.only(right: 5),
                                decoration: BoxDecoration(
                                    image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "assets/images/img1.jpg")),
                                    color: AppStore.colorWhiteBelge,
                                    borderRadius: BorderRadius.circular(12)),
                              ),
                            ),
                            Bounce(
                              duration: const Duration(milliseconds: 180),
                              onPressed: () {},
                              child: Container(
                                width: 200,
                                height: 60,
                                margin: const EdgeInsets.only(right: 5),
                                decoration: BoxDecoration(
                                    image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "assets/images/img2.jpg")),
                                    color: AppStore.colorWhiteBelge,
                                    borderRadius: BorderRadius.circular(12)),
                              ),
                            ),
                            Bounce(
                              duration: const Duration(milliseconds: 180),
                              onPressed: () {},
                              child: Container(
                                width: 200,
                                height: 60,
                                margin: const EdgeInsets.only(right: 5),
                                decoration: BoxDecoration(
                                    image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "assets/images/img3.jpg")),
                                    color: AppStore.colorWhiteBelge,
                                    borderRadius: BorderRadius.circular(12)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const FaceBookDivider(),
                const ElementUserTools(
                  imgUrl: 'assets/icons/user.jpg',
                ),
                const SizedBox(height: 10),
                const Divider(
                  height: 4,
                  color: AppStore.colorWhiteBelge,
                ),
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
                              length: 2,
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
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                  unselectedLabelStyle: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13),
                                  unselectedLabelColor: AppStore.colorGrey,
                                  tabs: [
                                    Tab(
                                      text: "Posts",
                                    ),
                                    Tab(
                                      text: "Archive",
                                    ),
                                  ]),
                            ),
                          ),
                          const SizedBox(width: 50),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                CupertinoIcons
                                    .slider_horizontal_below_rectangle,
                                size: 30,
                                color: AppStore.colorPrimary,
                              )),
                          const SizedBox(width: 3),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                CupertinoIcons.search,
                                size: 30,
                                color: AppStore.colorPrimary,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.settings,
                                size: 30,
                                color: AppStore.colorPrimary,
                              )),
                        ],
                      )),
                ),
                const FaceBookDivider(),
                // publication ====================>
                const PublicationCard(
                  author: "Franck Mekoulou",
                  authorImgProfile: "default_user",
                  imgPathMediaForPub: "https://images.unsplash.com/photo-1581472723648-909f4851d4ae?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjJ8fGNvZGluZ3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
                ),
                const PublicationCard(
                  author: "Denis Taukin",
                  authorImgProfile:
                      "https://images.unsplash.com/photo-1564564244660-5d73c057f2d2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjF8fG1hbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
                  imgPathMediaForPub: "https://images.unsplash.com/photo-1451187580459-43490279c0fa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjl8fGNvZGluZ3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
                ),
                const PublicationWithTextOnly(
                  nLike: "55",
                  nLove: "19",
                  nWow: "09",
                  nComment: "12",
                  nbShared: "0",
                  authorImgProfile:
                      "https://images.unsplash.com/photo-1566753323558-f4e0952af115?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjB8fG1hbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
                  authorName: "El Pavel",
                ),
                const PublicationCard(
                  author: "Franck Mekoulou",
                  authorImgProfile: "default_user",
                  imgPathMediaForPub:
                      "https://images.unsplash.com/photo-1659536540434-fabeb68f6fa9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwyMXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
                ),
                const PublicationWithTextOnly(
                  nLike: "110",
                  nLove: "25",
                  nWow: "48",
                  nComment: "5",
                  nbShared: "1",
                  authorImgProfile:
                      "https://images.unsplash.com/photo-1604004555489-723a93d6ce74?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8Z2lybHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
                  authorName: "Daniella Pink",
                ),
                const PublicationWithTextOnly(
                  nLike: "173",
                  nLove: "3",
                  nWow: "8",
                  nComment: "11",
                  nbShared: "0",
                  authorImgProfile:
                      "https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjV8fG1hbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
                  authorName: "Otis Nelenz",
                ),
              ],
            )));
  }

  Widget galleryUserPhotos() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30),
      decoration: const BoxDecoration(
        color: AppStore.colorWhite,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        children: [
          // appbar model sheet
          Container(
            width: double.infinity,
            height: 40,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            color: AppStore.colorWhite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Bounce(
                    duration: const Duration(milliseconds: 180),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(CupertinoIcons.back,
                        size: 30, color: AppStore.colorPrimary)),
                const Text("Photos",
                    style: TextStyle(
                        color: AppStore.colorPrimary,
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
                Bounce(
                    duration: const Duration(milliseconds: 180),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(CupertinoIcons.add_circled,
                        size: 30, color: AppStore.colorPrimary)),
              ],
            ),
          ),
          const SizedBox(height: 15),
          Divider(
              height: 1,
              thickness: 1,
              color: AppStore.colorGrey.withOpacity(.30)),
          const DefaultTabController(
            length: 3,
            child: TabBar(
                padding: EdgeInsets.zero,
                labelPadding: EdgeInsets.zero,
                indicatorPadding: EdgeInsets.zero,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: AppStore.colorPrimary,
                indicatorWeight: 3,
                labelColor: AppStore.colorBlack,
                labelStyle:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                unselectedLabelStyle:
                    TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
                unselectedLabelColor: AppStore.colorGrey,
                tabs: [
                  Tab(
                    text: "Uploads",
                  ),
                  Tab(
                    text: "Albums",
                  ),
                  Tab(
                    text: "Photos of you",
                  ),
                ]),
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 3),
          Align(
              alignment: Alignment.center,
              child: Column(
                children: const [
                  Text(
                    "No Image in here",
                    style: TextStyle(
                        color: AppStore.colorPrimary,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "You can upload from you gallery",
                    style: TextStyle(
                        color: AppStore.colorBlack,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
