import 'package:carousel_slider/carousel_slider.dart';
import 'package:facebook/utils/appstore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';

class PublicationWithMedia extends StatefulWidget {
  const PublicationWithMedia({Key? key}) : super(key: key);

  @override
  State<PublicationWithMedia> createState() => _PublicationWithMediaState();
}

class _PublicationWithMediaState extends State<PublicationWithMedia> {
  bool addUser = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        color: AppStore.colorWhite,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            // header base information
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Container(
                          width: 55,
                          height: 55,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppStore.colorWhiteBelge,
                          ),
                        ),
                        Container(
                          width: 13,
                          height: 13,
                          margin: const EdgeInsets.only(right: 4),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: AppStore.colorWhite),
                              color: AppStore.colorGreen,
                              shape: BoxShape.circle),
                        )
                      ],
                    ),
                    const SizedBox(width: 5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Jerome Bell",
                          style: TextStyle(
                              color: AppStore.colorBlack,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 1),
                        Text(
                          "August 15 at 6:34PM",
                          style: TextStyle(
                              color: AppStore.colorGrey,
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    )
                  ],
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_horiz,
                      color: AppStore.colorGrey,
                      size: 25,
                    ))
              ],
            ),
            // text publication
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Everyday pratice shows that a high-quality prototype of a future project plays a cruacial role for timely completion of a super-task",
                style: TextStyle(color: AppStore.colorBlack.withOpacity(.80)),
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            // content media
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 10),
              child: SizedBox(
                  height: 240,
                  child: CarouselSlider(
                      items: [
                        Container(
                          width: 500,
                          height: 235,
                          decoration: BoxDecoration(
                              color: Colors.cyan,
                              borderRadius: BorderRadius.circular(12)),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 250,
                              height: 115,
                              decoration: BoxDecoration(
                                  color: Colors.pinkAccent,
                                  borderRadius: BorderRadius.circular(12)),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              width: 250,
                              height: 115,
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(12)),
                            ),
                          ],
                        ),
                      ],
                      options: CarouselOptions(
                          height: 240,
                          enableInfiniteScroll: false,
                          viewportFraction: .8,
                          padEnds: false,
                          pageSnapping: false,
                          scrollPhysics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal))),
            ),
            // controller
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // like
                  Bounce(
                    duration: const Duration(milliseconds: 180),
                    onPressed: () {},
                    child: Container(
                      width: 70,
                      height: 35,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: AppStore.colorWhiteBelge,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/icons/like.png',
                              width: 20, height: 20),
                          const SizedBox(width: 5),
                          const Text(
                            "184",
                            style: TextStyle(
                                fontSize: 13,
                                color: AppStore.colorBlack,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  // love
                  Bounce(
                    duration: const Duration(milliseconds: 180),
                    onPressed: () {},
                    child: Container(
                      width: 70,
                      height: 35,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: AppStore.colorWhiteBelge,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/icons/heart.png',
                              width: 20, height: 20),
                          const SizedBox(width: 5),
                          const Text(
                            "97",
                            style: TextStyle(
                                fontSize: 13,
                                color: AppStore.colorBlack,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  // wow
                  Bounce(
                    duration: const Duration(milliseconds: 180),
                    onPressed: () {},
                    child: Container(
                      width: 70,
                      height: 35,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: AppStore.colorWhiteBelge,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/icons/wow.png',
                              width: 20, height: 20),
                          const SizedBox(width: 5),
                          const Text(
                            "36",
                            style: TextStyle(
                                fontSize: 13,
                                color: AppStore.colorBlack,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  // add to user
                  Bounce(
                    duration: const Duration(milliseconds: 180),
                    onPressed: () {
                      setState(() {
                        addUser = !addUser;
                      });
                    },
                    child: Container(
                      width: 70,
                      height: 35,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: AppStore.colorWhiteBelge,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          addUser
                              ? Container()
                              : Image.asset('assets/icons/add-user.png',
                                  width: 20, height: 20),
                          const SizedBox(width: 5),
                          Text(
                            addUser ? "Added." : "Add",
                            style: TextStyle(
                                fontSize: 13,
                                color: addUser
                                    ? AppStore.colorPrimary
                                    : AppStore.colorBlack,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            // the interract box
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                            color: Colors.cyan,
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                            color: Colors.cyan,
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.circular(5)),
                        alignment: Alignment.center,
                        child: const Icon(
                          Icons.add,
                          size: 15,
                          color: AppStore.colorWhite,
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        "75 comments",
                        style: TextStyle(
                            color: AppStore.colorGrey,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 15),
                    alignment: Alignment.center,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(
                          CupertinoIcons.reply,
                          size: 25,
                          color: AppStore.colorGrey,
                        ),
                        SizedBox(width: 8),
                        Text(
                          "56",
                          style: TextStyle(
                              fontSize: 15,
                              color: AppStore.colorGrey,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 8),
            const Divider(
              height: 4,
              color: AppStore.colorWhiteBelge,
            ),
          ],
        ),
      ),
    );
  }
}

class PublicationWithTextOnlyActu extends StatefulWidget {
  const PublicationWithTextOnlyActu({Key? key}) : super(key: key);

  @override
  State<PublicationWithTextOnlyActu> createState() =>
      _PublicationWithTextOnlyActuState();
}

class _PublicationWithTextOnlyActuState
    extends State<PublicationWithTextOnlyActu> {
  bool addUser = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        color: AppStore.colorWhite,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            // header base information
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Container(
                          width: 55,
                          height: 55,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppStore.colorWhiteBelge,
                          ),
                        ),
                        Container(
                          width: 13,
                          height: 13,
                          margin: const EdgeInsets.only(right: 4),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: AppStore.colorWhite),
                              color: AppStore.colorGreen,
                              shape: BoxShape.circle),
                        )
                      ],
                    ),
                    const SizedBox(width: 5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Jackob Jones",
                          style: TextStyle(
                              color: AppStore.colorBlack,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 1),
                        Text(
                          "August 15 at 2:34AM",
                          style: TextStyle(
                              color: AppStore.colorGrey,
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    )
                  ],
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_horiz,
                      color: AppStore.colorGrey,
                      size: 25,
                    ))
              ],
            ),
            // text publication
            Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Within the framework of the specification of modern standard; direct participants in technologiecial progress only add to factional differences and are presented in a exceptionally positive light.",
                      style: TextStyle(
                          color: AppStore.colorBlack.withOpacity(.80),
                          height: 1.2),
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "See more",
                      style: TextStyle(
                          color: AppStore.colorPrimary,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    )
                  ],
                )),
            // content media
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 10),
              child: SizedBox(
                  height: 200,
                  child: CarouselSlider(
                      items: [
                        Container(
                          height: 200,
                          decoration: BoxDecoration(
                              color: Colors.blue.shade300,
                              borderRadius: BorderRadius.circular(12)),
                        ),
                      ],
                      options: CarouselOptions(
                          height: 200,
                          enableInfiniteScroll: false,
                          viewportFraction: 1,
                          scrollPhysics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal))),
            ),
            // controller
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // like
                  Bounce(
                    duration: const Duration(milliseconds: 180),
                    onPressed: () {},
                    child: Container(
                      width: 70,
                      height: 35,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: AppStore.colorWhiteBelge,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/icons/like.png',
                              width: 20, height: 20),
                          const SizedBox(width: 5),
                          const Text(
                            "128",
                            style: TextStyle(
                                fontSize: 13,
                                color: AppStore.colorBlack,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  // love
                  Bounce(
                    duration: const Duration(milliseconds: 180),
                    onPressed: () {},
                    child: Container(
                      width: 70,
                      height: 35,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: AppStore.colorWhiteBelge,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/icons/heart.png',
                              width: 20, height: 20),
                          const SizedBox(width: 5),
                          const Text(
                            "232",
                            style: TextStyle(
                                fontSize: 13,
                                color: AppStore.colorBlack,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  // wow
                  Bounce(
                    duration: const Duration(milliseconds: 180),
                    onPressed: () {},
                    child: Container(
                      width: 70,
                      height: 35,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: AppStore.colorWhiteBelge,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/icons/wow.png',
                              width: 20, height: 20),
                          const SizedBox(width: 5),
                          const Text(
                            "12",
                            style: TextStyle(
                                fontSize: 13,
                                color: AppStore.colorBlack,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  // add to user
                  Bounce(
                    duration: const Duration(milliseconds: 180),
                    onPressed: () {},
                    child: Container(
                      width: 70,
                      height: 35,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: AppStore.colorWhiteBelge,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          addUser
                              ? Container()
                              : Image.asset('assets/icons/add-user.png',
                                  width: 20, height: 20),
                          const SizedBox(width: 5),
                          Text(
                            addUser ? "Added." : "Add",
                            style: TextStyle(
                                fontSize: 13,
                                color: addUser
                                    ? AppStore.colorPrimary
                                    : AppStore.colorBlack,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            // the interract box
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                            color: Colors.cyan,
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                            color: Colors.cyan,
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.circular(5)),
                        alignment: Alignment.center,
                        child: const Icon(
                          Icons.add,
                          size: 15,
                          color: AppStore.colorWhite,
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        "09 comments",
                        style: TextStyle(
                            color: AppStore.colorGrey,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 15),
                    alignment: Alignment.center,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(
                          CupertinoIcons.reply,
                          size: 25,
                          color: AppStore.colorGrey,
                        ),
                        SizedBox(width: 8),
                        Text(
                          "14",
                          style: TextStyle(
                              fontSize: 15,
                              color: AppStore.colorGrey,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Divider(
              height: 4,
              thickness: 2,
              color: AppStore.colorWhiteBelge,
            ),
          ],
        ),
      ),
    );
  }
}
