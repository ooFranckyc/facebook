import 'package:facebook/screens/home/fragments/explore_fragment/pages/marketplace/widgets/article.dart';
import 'package:facebook/utils/appstore.dart';
import 'package:facebook/utils/widgets/divider.dart';
import 'package:facebook/utils/widgets/search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';

class MarketplaceScreen extends StatefulWidget {
  const MarketplaceScreen({Key? key}) : super(key: key);

  @override
  State<MarketplaceScreen> createState() => _MarketplaceScreenState();
}

class _MarketplaceScreenState extends State<MarketplaceScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppStore.colorWhite,
        elevation: 0,
        centerTitle: false,
        leadingWidth: 30,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Icon(CupertinoIcons.back,
                  size: 30, color: AppStore.colorPrimary),
            )),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              CupertinoIcons.add_circled,
              size: 30,
              color: AppStore.colorPrimary,
            ),
          )
        ],
        automaticallyImplyLeading: false,
        title: const Text(
          "Marketplace",
          style: TextStyle(
              color: AppStore.colorPrimary,
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: AppStore.colorWhite,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Container(
                    width: 140,
                    height: 140,
                    margin: const EdgeInsets.only(top: 10),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/icons/user.jpg'))),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Franck Mekoulou",
                    style: TextStyle(
                        color: AppStore.colorBlack,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.star_rate_rounded,
                            size: 22,
                            color: Color(0xffFD9B0D),
                          ),
                          Icon(
                            Icons.star_rate_rounded,
                            size: 22,
                            color: Color(0xffFD9B0D),
                          ),
                          Icon(
                            Icons.star_rate_rounded,
                            size: 22,
                            color: Color(0xffFD9B0D),
                          ),
                          Icon(
                            Icons.star_rate_rounded,
                            size: 22,
                            color: Color(0xffFD9B0D),
                          ),
                          Icon(
                            Icons.star_half_rounded,
                            size: 22,
                            color: Color(0xffFD9B0D),
                          ),
                        ],
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        "5.8(53)",
                        style: TextStyle(
                            color: AppStore.colorGrey,
                            fontWeight: FontWeight.w500,
                            fontSize: 13),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  const Expanded(
                      child: SearchBarStackIcon(
                          hintText: "Search marketplace",
                          icon: CupertinoIcons.search)),
                  const SizedBox(width: 15),
                  IconButton(
                      onPressed: () {
                        // add a new item in marketplace
                      },
                      icon: const Icon(CupertinoIcons.add_circled),
                      iconSize: 30,
                      color: AppStore.colorPrimary),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(CupertinoIcons.mail),
                      iconSize: 30,
                      color: AppStore.colorPrimary),
                ],
              ),
            ),
            const SizedBox(height: 8),
            const Divider(
              height: 4,
              color: AppStore.colorWhiteBelge,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
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
                    labelStyle:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    unselectedLabelStyle:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
                    unselectedLabelColor: AppStore.colorGrey,
                    tabs: [
                      Tab(
                        text: "Marketplace",
                      ),
                      Tab(
                        text: "Saved",
                      ),
                      Tab(
                        text: "My listings",
                      ),
                    ]),
              ),
            ),
            const FaceBookDivider(),
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "Categories",
                      style: TextStyle(
                          color: AppStore.colorBlack,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        itemCategorieForSale(
                            itemName: "Vehicules",
                            debugColor: AppStore.colorWhiteBelge),
                        itemCategorieForSale(
                            itemName: "Homes",
                            debugColor: AppStore.colorWhiteBelge),
                        itemCategorieForSale(
                            itemName: "Rentails",
                            debugColor: AppStore.colorWhiteBelge),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        itemCategorieForSale(
                            itemName: "Electronics",
                            debugColor: AppStore.colorWhiteBelge),
                        itemCategorieForSale(
                            itemName: "Family",
                            debugColor: AppStore.colorWhiteBelge),
                        itemCategorieForSale(
                            itemName: "Clothing",
                            debugColor: AppStore.colorWhiteBelge),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    "See more",
                    style: TextStyle(
                        color: AppStore.colorPrimary,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 5),
                  Icon(
                    Icons.keyboard_arrow_down,
                    size: 23,
                    color: AppStore.colorPrimary,
                  )
                ],
              ),
            ),
            // list row for sale avaible in marketplace
            listArticle("Near me"),
            const SizedBox(height: 10),
            listArticle("Women's Clothings"),
          ],
        ),
      ),
    );
  }

  Widget listArticle(String listName) {
    return Column(
      children: [
        SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      listName,
                      style: const TextStyle(
                          color: AppStore.colorBlack,
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    ),
                    Bounce(
                      duration: const Duration(milliseconds: 180),
                      onPressed: () {
                        //to do
                      },
                      child: const Text(
                        "See all",
                        style: TextStyle(
                            color: AppStore.colorPrimary,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 10),
                child: SizedBox(
                  height: 250,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      MarketplaceArticle(
                          desc: "Men's cotton hip hop t-shirt summer",
                          price: "97.0"),
                      MarketplaceArticle(
                          desc: "Women's lace-up sneakers, mesh breath",
                          price: "28.8"),
                      MarketplaceArticle(
                          desc: "Men's cotton hip hop t-shirt summer",
                          price: "18.0"),
                      MarketplaceArticle(
                          desc: "Men's cotton hip hop t-shirt summer",
                          price: "16.0"),
                      MarketplaceArticle(
                          desc: "Men's cotton hip hop t-shirt summer",
                          price: "45.0"),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget itemCategorieForSale(
      {required String itemName, required Color debugColor}) {
    return Column(
      children: [
        Container(
          width: 110,
          height: 110,
          decoration: BoxDecoration(
              color: debugColor, borderRadius: BorderRadius.circular(12)),
        ),
        const SizedBox(height: 5),
        Text(
          itemName,
          style: const TextStyle(
              color: AppStore.colorBlack,
              fontSize: 15,
              fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
