import 'package:carousel_slider/carousel_slider.dart';
import 'package:facebook/screens/home/fragments/explore_fragment/pages/groups/groups_page.dart';
import 'package:facebook/screens/home/fragments/explore_fragment/widgets/article.dart';
import 'package:facebook/screens/home/fragments/explore_fragment/widgets/awesome_interract_icon.dart';
import 'package:facebook/utils/animations/transition.dart';
import 'package:facebook/utils/appstore.dart';
import 'package:facebook/utils/widgets/search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
              fontSize: 30,
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
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppStore.colorWhiteBelge),
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
                                fontWeight: FontWeight.w400),
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
                          Icon(
                            CupertinoIcons.sun_max_fill,
                            color: Colors.amber.shade500,
                            size: 60,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(width: 10),
                              const Text(
                                "+20",
                                style: TextStyle(
                                    fontSize: 30,
                                    color: AppStore.colorBlack,
                                    letterSpacing: 1.1,
                                    fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(width: 15),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Sunny",
                                    style: TextStyle(
                                        color: AppStore.colorBlack,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Row(
                                    children: const [
                                      Text("Feed like",
                                          style: TextStyle(
                                              color: AppStore.colorGrey,
                                              fontWeight: FontWeight.w400)),
                                      SizedBox(width: 5),
                                      Text(
                                        "+24",
                                        style: TextStyle(
                                            color: AppStore.colorBlack,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
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
                        thickness: 1.1,
                        color: AppStore.colorGrey.withOpacity(.40),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text("18:00",
                                  style: TextStyle(
                                      color: AppStore.colorGrey,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400)),
                              const SizedBox(height: 3),
                              Icon(Icons.sunny,
                                  color: Colors.amber.shade600, size: 28),
                              const SizedBox(height: 3),
                              const Text(
                                "+24",
                                style: TextStyle(
                                    color: AppStore.colorBlack,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              const Text("19:00",
                                  style: TextStyle(
                                      color: AppStore.colorGrey,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400)),
                              const SizedBox(height: 3),
                              Icon(Icons.sunny,
                                  color: Colors.amber.shade600, size: 28),
                              const SizedBox(height: 3),
                              const Text(
                                "+23",
                                style: TextStyle(
                                    color: AppStore.colorBlack,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              const Text("20:00",
                                  style: TextStyle(
                                      color: AppStore.colorGrey,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400)),
                              const SizedBox(height: 3),
                              Icon(CupertinoIcons.cloud,
                                  color: Colors.blue.shade600, size: 28),
                              const SizedBox(height: 3),
                              const Text(
                                "+20",
                                style: TextStyle(
                                    color: AppStore.colorBlack,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              const Text("21:00",
                                  style: TextStyle(
                                      color: AppStore.colorGrey,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500)),
                              const SizedBox(height: 3),
                              Icon(CupertinoIcons.moon_circle,
                                  color: Colors.purple.shade600, size: 28),
                              const SizedBox(height: 3),
                              const Text(
                                "+19",
                                style: TextStyle(
                                    color: AppStore.colorBlack,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              const Text("22:00",
                                  style: TextStyle(
                                      color: AppStore.colorGrey,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400)),
                              const SizedBox(height: 3),
                              Icon(CupertinoIcons.moon_circle,
                                  color: Colors.purple.shade600, size: 28),
                              const SizedBox(height: 3),
                              const Text(
                                "+18",
                                style: TextStyle(
                                    color: AppStore.colorBlack,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              const Text("23:00",
                                  style: TextStyle(
                                      color: AppStore.colorGrey,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400)),
                              const SizedBox(height: 3),
                              Icon(CupertinoIcons.cloud,
                                  color: Colors.blue.shade600, size: 28),
                              const SizedBox(height: 3),
                              const Text(
                                "+17",
                                style: TextStyle(
                                    color: AppStore.colorBlack,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13),
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
            // const Spacer(), // cause a exception | cause une exception
            const SizedBox(height: 20),
            // all in one with you hand
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
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
                        color: Colors.pink,
                        onTap: () {},
                      ),
                      AwesomeInterractIcon(
                        icon: CupertinoIcons.person_2_fill,
                        title: "Friends",
                        color: Colors.blue,
                        onTap: () {},
                      ),
                      AwesomeInterractIcon(
                        icon: CupertinoIcons.group_solid,
                        title: "Groups",
                        color: Colors.purple.shade800,
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
                        color: Colors.green,
                        onTap: () {},
                      ),
                      AwesomeInterractIcon(
                        icon: CupertinoIcons.memories,
                        title: "Memories",
                        color: Colors.purple,
                        onTap: () {},
                      ),
                      AwesomeInterractIcon(
                        icon: Icons.markunread_mailbox_rounded,
                        title: "Saved",
                        color: AppStore.colorBlack.withOpacity(.80),
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
                        color: Colors.blue.shade800,
                        onTap: () {},
                      ),
                      AwesomeInterractIcon(
                        icon: Icons.event,
                        title: "Events",
                        color: Colors.red.shade500,
                        onTap: () {},
                      ),
                      AwesomeInterractIcon(
                        icon: Icons.work_history_rounded,
                        title: "Jobs",
                        color: Colors.amber.shade800,
                        onTap: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
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
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          GestureDetector(
                            onTap: () {
                              // show more maketplace
                            },
                            child: const Text(
                              "See more",
                              style: TextStyle(
                                  color: AppStore.colorPrimary,
                                  fontSize: 16,
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
