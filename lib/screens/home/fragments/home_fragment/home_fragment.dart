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
  int psrci = 0; // please modify this variable...
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
        PublicationWithMedia(
          nLike: "5572",
          nLove: "2702",
          nWow: "19",
          nComment: "641",
          nbShared: "2k",
          authorName: "Jerome Bell",
          authorImgProfile:
              "https://images.unsplash.com/photo-1600603405959-6d623e92445c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzh8fG1hbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
          pubImg1:
              "https://images.unsplash.com/photo-1661788275900-976bc3048f40?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDZ8NnNNVmpUTFNrZVF8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
          pubImg2:
              "https://images.unsplash.com/photo-1661100710716-2b6aea854cb4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDExfDZzTVZqVExTa2VRfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
          pubImg3:
              "https://images.unsplash.com/photo-1660551772352-0855c10356b1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDI1fDZzTVZqVExTa2VRfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
        ),
        PublicationWithTextOnlyActu(
          nLike: "346",
          nLove: "202",
          nWow: "93",
          nComment: "122",
          nbShared: "57",
          authorName: "Justin Nono",
          authorImgProfile:
              "https://images.unsplash.com/flagged/photo-1573603867003-89f5fd7a7576?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8YnVzaW5lc3MlMjBtYW58ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
          imgPathMediaForPub:
              "https://images.unsplash.com/photo-1637073849640-b283dcd9a111?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZGV2ZWxvcHBlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
        ),
        PublicationWithTextOnlyActu(
          nLike: "1k",
          nLove: "578",
          nWow: "167",
          nComment: "641",
          nbShared: "788",
          authorName: "El Brixa",
          authorImgProfile:
              "https://images.unsplash.com/photo-1618085222100-93f0eecad0aa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8YnVzaW5lc3MlMjBnaXJsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
          imgPathMediaForPub:
              "https://images.unsplash.com/photo-1488190211105-8b0e65b80b4e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGJ1c2luZXNzJTIwZ2lybHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
        ),
        PublicationWithMedia(
          nLike: "6k",
          nLove: "1k",
          nWow: "896",
          nComment: "2k",
          nbShared: "2k",
          authorName: "Adam Benz",
          authorImgProfile:
              "https://images.unsplash.com/photo-1591084728795-1149f32d9866?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDd8fG1hbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
          pubImg1:
              "https://images.unsplash.com/photo-1546410531-bb4caa6b424d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDl8fG1hbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
          pubImg2:
              "https://images.unsplash.com/photo-1662091383949-639fe718d586?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
          pubImg3:
              "https://images.unsplash.com/photo-1662118821764-68db771a95ec?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
        ),
        PublicationWithTextOnly(
          nLike: "120",
          nLove: "19",
          nWow: "48",
          nComment: "23",
          nbShared: "0",
          authorImgProfile:
              "https://images.unsplash.com/photo-1564564244660-5d73c057f2d2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjF8fG1hbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
          authorName: "Darwin Salmon",
        ),
        PublicationCard(
          author: "Adam Germany",
          authorImgProfile:
              "https://images.unsplash.com/photo-1590074251929-76f7c465a3bd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fG9sZCUyMG1hbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
          imgPathMediaForPub:
              "https://images.unsplash.com/photo-1659536540434-fabeb68f6fa9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwyMXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
        ),
        PublicationCard(
          author: "Denis Taukin",
          authorImgProfile:
              "https://images.unsplash.com/flagged/photo-1559502867-c406bd78ff24?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fGdpcmx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
          imgPathMediaForPub:
              "https://images.unsplash.com/photo-1661553914969-1c781d515fae?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDEwfGJvOGpRS1RhRTBZfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
        ),
      ],
    );
  }
}
