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
          const ContactStorie(
            name: "Adam",
            hasRead: false,
            imgProfile:
                "https://images.unsplash.com/photo-1537511446984-935f663eb1f4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjR8fG1hbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
          ),
          const ContactStorie(
            name: "Adeline",
            hasRead: false,
            imgProfile:
                "https://images.unsplash.com/photo-1658460233894-a1fbb68f4b8b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8OHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
          ),
          const ContactStorie(
            name: "Jires",
            hasRead: true,
            imgProfile:
                "https://images.unsplash.com/photo-1612214070475-1e73f478188c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8YmxhY2slMjBtYW58ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
          ),
          const ContactStorie(
            name: "Diane",
            hasRead: false,
            imgProfile:
                "https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Z2lybHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
          ),
          const ContactStorie(
            name: "Anais",
            hasRead: true,
            imgProfile:
                "https://images.unsplash.com/photo-1599842057874-37393e9342df?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Z2lybHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
          ),
          const ContactStorie(
            name: "Alan",
            hasRead: false,
            imgProfile:
                "https://images.unsplash.com/photo-1548449112-96a38a643324?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8bWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
          ),
        ],
      ),
    );
  }
}

class ContactStorie extends StatelessWidget {
  final String name;
  final bool hasRead;
  final String imgProfile;
  const ContactStorie(
      {Key? key,
      required this.name,
      required this.hasRead,
      required this.imgProfile})
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
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(imgProfile)),
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
