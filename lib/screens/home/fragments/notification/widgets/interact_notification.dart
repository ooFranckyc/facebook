import 'package:facebook/utils/appstore.dart';
import 'package:flutter/material.dart';

class InterractNotification extends StatelessWidget {
  final String debugNotifiType;
  final String userInterractNotificationSender;
  final String when;
  const InterractNotification(
      {Key? key,
      required this.debugNotifiType,
      required this.userInterractNotificationSender,
      required this.when})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
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
                          border:
                              Border.all(width: 1, color: AppStore.colorWhite),
                          color: AppStore.colorWhite,
                          shape: BoxShape.circle),
                      child: debugNotifiType == "love"
                          ? Image.asset(
                              'assets/icons/heart.png',
                              width: 15,
                              height: 15,
                            )
                          : Image.asset('assets/icons/like.png',
                              width: 15, height: 15))
                ],
              ),
              const SizedBox(width: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(userInterractNotificationSender,
                          style: const TextStyle(
                              color: AppStore.colorPrimary,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(width: 3),
                      Text(
                          debugNotifiType == "love"
                              ? "love your photo"
                              : "like your photo",
                          style: const TextStyle(
                              color: AppStore.colorBlack,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Text(when,
                      style: const TextStyle(
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
                color: AppStore.colorWhiteBelge,
                borderRadius: BorderRadius.circular(12)),
          ),
        ],
      ),
    );
  }
}
