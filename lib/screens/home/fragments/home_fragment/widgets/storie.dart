import 'package:facebook/utils/appstore.dart';
import 'package:flutter/material.dart';

class FacebookStorie extends StatefulWidget {
  const FacebookStorie({Key? key}) : super(key: key);

  @override
  State<FacebookStorie> createState() => FacebookStorieState();
}

class FacebookStorieState extends State<FacebookStorie> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      color: AppStore.colorWhite,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        children: [
          Column(
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    width: 55,
                    height: 55,
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
                        color: AppStore.colorPrimary,
                        shape: BoxShape.circle),
                    child: const Icon(
                      Icons.add,
                      size: 15,
                      color: AppStore.colorWhite,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 5),
              const Text(
                "New Story",
                style: TextStyle(
                    color: AppStore.colorGrey,
                    fontSize: 12,
                    fontWeight: FontWeight.w300),
              )
            ],
          ),
          const ContactStorie(name: "Adam", hasRead: false),
          const ContactStorie(name: "Adeline", hasRead: false),
          const ContactStorie(name: "Jires", hasRead: true),
          const ContactStorie(name: "Diane", hasRead: false),
          const ContactStorie(name: "Martin", hasRead: true),
          const ContactStorie(name: "Alan", hasRead: false),
        ],
      ),
    );
  }
}

class ContactStorie extends StatelessWidget {
  final String name;
  final bool hasRead;
  const ContactStorie({Key? key, required this.name, required this.hasRead})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        children: [
          Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                  width: hasRead ? 0 : 2,
                  color: hasRead
                      ? AppStore.colorTransparent
                      : AppStore.colorPrimary),
              color: AppStore.colorWhiteBelge,
            ),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 2, color: AppStore.colorWhite),
                color: AppStore.colorWhiteBelge,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            name,
            style: const TextStyle(
                color: AppStore.colorPrimary,
                fontSize: 12,
                fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
