import 'package:facebook/screens/home/fragments/home_fragment/widgets/elemetor.dart';
import 'package:facebook/screens/home/fragments/home_fragment/widgets/publication.dart';
import 'package:facebook/screens/home/fragments/home_fragment/widgets/storie.dart';
import 'package:facebook/screens/home/fragments/profile_fragment/widgets/pub_card.dart';
import 'package:facebook/utils/appstore.dart';
import 'package:facebook/utils/widgets/divider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeFragment extends StatefulWidget {
  const HomeFragment({Key? key}) : super(key: key);

  @override
  State<HomeFragment> createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> {
  int currentIndex = 0;
  int psrci = 0; // please modify this variable 🤣😒...
  bool addUser = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppStore.colorWhite,
        elevation: 0,
        centerTitle: false,
        title: const Text(
          "facebook",
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
          children: [
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
                                  text: "News",
                                ),
                                Tab(
                                  text: "Groups",
                                ),
                                Tab(
                                  text: "Watch",
                                ),
                              ]),
                        ),
                      ),
                      const SizedBox(width: 50),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            CupertinoIcons.paintbrush_fill,
                            size: 30,
                            color: AppStore.colorPrimary,
                          )),
                      const SizedBox(width: 3),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            CupertinoIcons.link_circle,
                            size: 30,
                            color: AppStore.colorPrimary,
                          )),
                    ],
                  )),
            ),
            const SizedBox(height: 10),
            const FaceBookDivider(),
            // storie box
            const FacebookStorie(),
            const SizedBox(height: 10),
            const FaceBookDivider(),
            buildPublication()

            // Expanded(
            //   child: SizedBox(
            //     child: ListView.builder(
            //         itemCount: 1,
            //         physics: const BouncingScrollPhysics(),
            //         scrollDirection: Axis.vertical,
            //         itemBuilder: (context, index) => buildPublication()),
            //   ),
            // )
          ],
        ),
      ),
    );
  }

  Widget buildPublication() {
    return Column(
      children: const [
        PublicationWithMedia(),
        PublicationWithTextOnlyActu(),
        PublicationWithTextOnlyActu(),
        PublicationWithMedia(),
        PublicationWithTextOnly(),
        PublicationCard(author: "Adam Germany"),
        PublicationCard(author: "Denis Taukin"),
      ],
    );
  }
}
