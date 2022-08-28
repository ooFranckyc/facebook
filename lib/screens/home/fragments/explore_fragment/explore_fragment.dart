import 'package:carousel_slider/carousel_slider.dart';
import 'package:facebook/screens/home/fragments/explore_fragment/widgets/article.dart';
import 'package:facebook/screens/home/fragments/explore_fragment/widgets/awesome_interract_icon.dart';
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
                                fontWeight: FontWeight.bold),
                          ), // my country ;)
                          GestureDetector(
                              onTap: () {
                                // refresh your information
                              },
                              child: const Icon(Icons.sync,
                                  size: 18, color: AppStore.colorGrey))
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 70, top: 5),
                      child: Row(
                        children: [
                          Icon(
                            CupertinoIcons.sun_max_fill,
                            color: Colors.amber.shade700,
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
                                    fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(width: 15),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Sunny",
                                    style: TextStyle(
                                        color: AppStore.colorGrey,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Row(
                                    children: const [
                                      Text("Feed like"),
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
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Divider(
                        height: 3,
                        thickness: 1.1,
                        color: AppStore.colorGrey,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              const Text("18:00",
                                  style: TextStyle(
                                      color: AppStore.colorGrey,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600)),
                              const SizedBox(height: 3),
                              Icon(Icons.sunny,
                                  color: Colors.amber.shade600, size: 25),
                              const SizedBox(height: 3),
                              const Text(
                                "+24",
                                style: TextStyle(
                                    color: AppStore.colorBlack,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              const Text("19:00",
                                  style: TextStyle(
                                      color: AppStore.colorGrey,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600)),
                              const SizedBox(height: 3),
                              Icon(Icons.sunny,
                                  color: Colors.amber.shade600, size: 25),
                              const SizedBox(height: 3),
                              const Text(
                                "+23",
                                style: TextStyle(
                                    color: AppStore.colorBlack,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              const Text("20:00",
                                  style: TextStyle(
                                      color: AppStore.colorGrey,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600)),
                              const SizedBox(height: 3),
                              Icon(CupertinoIcons.cloud,
                                  color: Colors.blue.shade600, size: 25),
                              const SizedBox(height: 3),
                              const Text(
                                "+20",
                                style: TextStyle(
                                    color: AppStore.colorBlack,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              const Text("21:00",
                                  style: TextStyle(
                                      color: AppStore.colorGrey,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600)),
                              const SizedBox(height: 3),
                              Icon(CupertinoIcons.moon,
                                  color: Colors.purple.shade600, size: 25),
                              const SizedBox(height: 3),
                              const Text(
                                "+19",
                                style: TextStyle(
                                    color: AppStore.colorBlack,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              const Text("22:00",
                                  style: TextStyle(
                                      color: AppStore.colorGrey,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600)),
                              const SizedBox(height: 3),
                              Icon(CupertinoIcons.moon,
                                  color: Colors.purple.shade600, size: 25),
                              const SizedBox(height: 3),
                              const Text(
                                "+18",
                                style: TextStyle(
                                    color: AppStore.colorBlack,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              const Text("23:00",
                                  style: TextStyle(
                                      color: AppStore.colorGrey,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600)),
                              const SizedBox(height: 3),
                              Icon(CupertinoIcons.cloud,
                                  color: Colors.blue.shade600, size: 25),
                              const SizedBox(height: 3),
                              const Text(
                                "+17",
                                style: TextStyle(
                                    color: AppStore.colorBlack,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
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
            // const Spacer(),
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
                    children: const [
                      AwesomeInterractIcon(
                          icon: Icons.coronavirus,
                          title: "COVID-19",
                          color: Colors.pink),
                      AwesomeInterractIcon(
                          icon: CupertinoIcons.person_2,
                          title: "Friends",
                          color: Colors.blue),
                      AwesomeInterractIcon(
                          icon: CupertinoIcons.group,
                          title: "Groups",
                          color: Colors.purple),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      AwesomeInterractIcon(
                          icon: CupertinoIcons.shopping_cart,
                          title: "Market",
                          color: Colors.green),
                      AwesomeInterractIcon(
                          icon: CupertinoIcons.memories,
                          title: "Memories",
                          color: Colors.purple),
                      AwesomeInterractIcon(
                          icon: Icons.markunread_mailbox_outlined,
                          title: "Saved",
                          color: AppStore.colorBlack),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AwesomeInterractIcon(
                          icon: CupertinoIcons.gamecontroller,
                          title: "Gaming",
                          color: Colors.blue.shade800),
                      AwesomeInterractIcon(
                          icon: Icons.event,
                          title: "Events",
                          color: Colors.red.shade800),
                      AwesomeInterractIcon(
                          icon: Icons.work_history_outlined,
                          title: "Jobs",
                          color: Colors.amber.shade800),
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
}
