import 'package:facebook/utils/appstore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationUserComment extends StatelessWidget {
  const NotificationUserComment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // any person post pub, notification models
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // circle profile
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppStore.colorPrimary,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/icons/user.jpg'))),
                      ),
                      Container(
                          width: 20,
                          height: 20,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: AppStore.colorWhite),
                              color: AppStore.colorWhite,
                              shape: BoxShape.circle),
                          child: Container(
                            width: 20,
                            height: 20,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppStore.colorGreen),
                            child: const Icon(
                              CupertinoIcons.bubble_left_fill,
                              color: AppStore.colorWhite,
                              size: 12,
                            ),
                          ))
                    ],
                  ),
                  const SizedBox(width: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text("Theressa Webb",
                              style: TextStyle(
                                  color: AppStore.colorPrimary,
                                  fontWeight: FontWeight.bold)),
                          Text("comment your post :",
                              style: TextStyle(
                                  color: AppStore.colorBlack,
                                  fontWeight: FontWeight.w400)),
                        ],
                      ),
                      Row(
                        children: const [
                          Text("You project made a great ",
                              style: TextStyle(
                                color: AppStore.colorBlack,
                                fontWeight: FontWeight.w400,
                              )),
                          Text("Impression ",
                              style: TextStyle(
                                  color: AppStore.colorPrimary,
                                  fontWeight: FontWeight.w400)),
                        ],
                      ),
                      const Text("on me, thank you...",
                          style: TextStyle(
                              color: AppStore.colorBlack,
                              fontWeight: FontWeight.w400)),
                      const SizedBox(height: 3),
                      const Text("Yestaday at 21:18",
                          style: TextStyle(
                              color: AppStore.colorGrey,
                              fontWeight: FontWeight.w400))
                    ],
                  )
                ],
              ),
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.blue.shade400,
                    borderRadius: BorderRadius.circular(12)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
