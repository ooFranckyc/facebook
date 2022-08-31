import 'package:carousel_slider/carousel_slider.dart';
import 'package:facebook/screens/home/fragments/explore_fragment/pages/groups/groups_page.dart';
import 'package:facebook/screens/home/fragments/explore_fragment/pages/marketplace/marketplace.dart';
import 'package:facebook/screens/home/fragments/explore_fragment/widgets/article.dart';
import 'package:facebook/screens/home/fragments/explore_fragment/widgets/awesome_interract_icon.dart';
import 'package:facebook/utils/animations/transition.dart';
import 'package:facebook/utils/appstore.dart';
import 'package:facebook/utils/widgets/search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';

class ExploreFragment extends StatefulWidget {
  const ExploreFragment({Key? key}) : super(key: key);

  @override
  State<ExploreFragment> createState() => _ExploreFragmentState();
}

class _ExploreFragmentState extends State<ExploreFragment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppStore.colorWhite,
        elevation: 0,
        centerTitle: false,
        title: const Text(
          "Good day, Franck!",
          style: TextStyle(
              color: AppStore.colorPrimary,
              fontSize: 26,
              fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: AppStore.colorWhite,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SearchBarStackIcon(
                    hintText: "Search", icon: CupertinoIcons.search)),
            const SizedBox(height: 20),
            // calendar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 218,
                width: double.infinity,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                          color: AppStore.colorBlack.withOpacity(.30),
                          spreadRadius: .30,
                          blurRadius: 3,
                          offset: const Offset(.20, .20),
                          blurStyle: BlurStyle.normal)
                    ],
                    color: AppStore.colorWhite),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    //header
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "5h:17PM Cameroon, Nkolbisson",
                            style: TextStyle(
                                color: AppStore.colorGrey,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ), // my country ;)
                          GestureDetector(
                              onTap: () {
                                // refresh your information
                              },
                              child: const Icon(Icons.sync,
                                  size: 20, color: AppStore.colorGrey))
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15, right: 70, top: 5),
                      child: Row(
                        children: [
                          const Icon(
                            CupertinoIcons.sun_max_fill,
                            color: Color(0xffFD9B0D),
                            size: 45,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(width: 15),
                              const Text(
                                "+20",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: AppStore.colorBlack,
                                    letterSpacing: 1.1,
                                    fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Sunny",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: AppStore.colorBlack,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Row(
                                    children: const [
                                      Text("Feed like",
                                          style: TextStyle(
                                              fontSize: 13.10,
                                              color: AppStore.colorGrey,
                                              fontWeight: FontWeight.w400)),
                                      SizedBox(width: 3),
                                      Text(
                                        "+24",
                                        style: TextStyle(
                                            color: AppStore.colorBlack,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Divider(
                        height: 3,
                        thickness: 1,
                        color: AppStore.colorGrey.withOpacity(.20),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Text("18:00",
                                  style: TextStyle(
                                      color: AppStore.colorGrey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400)),
                              SizedBox(height: 3),
                              Icon(Icons.sunny,
                                  color: Color(0xffFCAF35), size: 28),
                              SizedBox(height: 5),
                              Text(
                                "+24",
                                style: TextStyle(
                                    color: AppStore.colorBlack,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12),
                              )
                            ],
                          ),
                          Column(
                            children: const [
                              Text("19:00",
                                  style: TextStyle(
                                      color: AppStore.colorGrey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400)),
                              SizedBox(height: 3),
                              Icon(Icons.sunny,
                                  color: Color(0xffFCAF35), size: 28),
                              SizedBox(height: 5),
                              Text(
                                "+23",
                                style: TextStyle(
                                    color: AppStore.colorBlack,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12),
                              )
                            ],
                          ),
                          Column(
                            children: const [
                              Text("20:00",
                                  style: TextStyle(
                                      color: AppStore.colorGrey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400)),
                              SizedBox(height: 3),
                              Icon(CupertinoIcons.cloud_bolt_rain_fill,
                                  color: Color(0xff27B0FA), size: 28),
                              SizedBox(height: 5),
                              Text(
                                "+15",
                                style: TextStyle(
                                    color: AppStore.colorBlack,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              const Text("21:00",
                                  style: TextStyle(
                                      color: AppStore.colorGrey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500)),
                              const SizedBox(height: 3),
                              Icon(CupertinoIcons.moon_circle,
                                  color: Colors.purple.shade600, size: 28),
                              const SizedBox(height: 6),
                              const Text(
                                "+19",
                                style: TextStyle(
                                    color: AppStore.colorBlack,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              const Text("22:00",
                                  style: TextStyle(
                                      color: AppStore.colorGrey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400)),
                              const SizedBox(height: 3),
                              Icon(CupertinoIcons.moon_circle,
                                  color: Colors.purple.shade600, size: 28),
                              const SizedBox(height: 5),
                              const Text(
                                "+18",
                                style: TextStyle(
                                    color: AppStore.colorBlack,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              const Text("23:00",
                                  style: TextStyle(
                                      color: AppStore.colorGrey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400)),
                              const SizedBox(height: 3),
                              Icon(CupertinoIcons.cloud_fill,
                                  color: Colors.blue.shade600, size: 28),
                              const SizedBox(height: 5),
                              const Text(
                                "+17",
                                style: TextStyle(
                                    color: AppStore.colorBlack,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            // const Spacer(), // cause a exception! | cause une exception !
            const SizedBox(height: 25),
            // all in one with you hand
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AwesomeInterractIcon(
                        icon: Icons.coronavirus,
                        title: "COVID-19",
                        color: const Color(0xffFD4153),
                        onTap: () {},
                      ),
                      AwesomeInterractIcon(
                        icon: CupertinoIcons.person_2_fill,
                        title: "Friends",
                        color: const Color(0xff4CBBF6),
                        onTap: () {},
                      ),
                      AwesomeInterractIcon(
                        icon: CupertinoIcons.group_solid,
                        title: "Groups",
                        color: const Color(0xff7C48E8),
                        onTap: sendToGroupsDashboardScreen,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AwesomeInterractIcon(
                        icon: CupertinoIcons.shopping_cart,
                        title: "Market",
                        color: const Color(0xff349F34),
                        onTap: () {},
                      ),
                      AwesomeInterractIcon(
                        icon: CupertinoIcons.memories,
                        title: "Memories",
                        color: const Color(0xff7C48E8),
                        onTap: () {},
                      ),
                      AwesomeInterractIcon(
                        icon: Icons.bookmark_border_rounded,
                        title: "Saved",
                        color: const Color(0xff606061),
                        onTap: () {},
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AwesomeInterractIcon(
                        icon: CupertinoIcons.gamecontroller_fill,
                        title: "Gaming",
                        color: const Color(0xff27B0FA),
                        onTap: () {},
                      ),
                      AwesomeInterractIcon(
                        icon: Icons.event,
                        title: "Events",
                        color: const Color(0xffFD4153),
                        onTap: () {},
                      ),
                      AwesomeInterractIcon(
                        icon: Icons.work_history_outlined,
                        title: "Jobs",
                        color: const Color(0xffFD9B0D),
                        onTap: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            // carousel shopping marketplace item.
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: AppStore.colorWhite,
                margin: const EdgeInsets.only(
                    bottom: 0), // remove this line, it's not used
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Marketplace",
                            style: TextStyle(
                                color: AppStore.colorBlack,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                          Bounce(
                            duration: const Duration(milliseconds: 180),
                            onPressed: () {
                              // show more maketplace
                              Navigator.push(
                                  context,
                                  SlideTransitionRightToLeft(
                                      const MarketplaceScreen()));
                            },
                            child: const Text(
                              "See all",
                              style: TextStyle(
                                  color: AppStore.colorPrimary,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                    // best article provider
                    const SizedBox(height: 20),
                    CarouselSlider(
                        items: const [
                          MarketplaceItem(
                              color: Colors.pink,
                              itemName: "Women's clothing set\n, size S",
                              itemPrice: 97.0),
                          MarketplaceItem(
                              color: Colors.blue,
                              itemName:
                                  "Women's lace-up\nsneakers, mesh breath...",
                              itemPrice: 97.0),
                          MarketplaceItem(
                              color: Colors.orange,
                              itemName: "Jeans and shoes for a\ncharming girl",
                              itemPrice: 97.0),
                          MarketplaceItem(
                              color: Colors.green,
                              itemName:
                                  "Men'v wacthes top\nbrand lumary stanless",
                              itemPrice: 97.0),
                          MarketplaceItem(
                              color: Colors.amber,
                              itemName:
                                  "Long everning dress with a\n beautiful neckline",
                              itemPrice: 97.0),
                          MarketplaceItem(
                              color: Colors.indigo,
                              itemName:
                                  "Men'v cottion t-shirt,\nsummer, casaul",
                              itemPrice: 97.0),
                          MarketplaceItem(
                              color: Colors.cyan,
                              itemName: "Long dress for a beatiful girl",
                              itemPrice: 97.0),
                        ],
                        options: CarouselOptions(
                            padEnds: true,
                            autoPlay: true,
                            aspectRatio: .5,
                            enableInfiniteScroll: true,
                            enlargeCenterPage: true,
                            disableCenter: true,
                            height: 230))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void sendToGroupsDashboardScreen() {
    Navigator.push(context, SlideTransitionRightToLeft(const GroupsPage()));
  }
}
