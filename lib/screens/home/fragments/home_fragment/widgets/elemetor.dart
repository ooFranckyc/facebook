import 'package:facebook/utils/appstore.dart';
import 'package:facebook/utils/widgets/search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ElementUserTools extends StatefulWidget {
  final String imgUrl;
  const ElementUserTools({Key? key, required this.imgUrl}) : super(key: key);

  @override
  State<ElementUserTools> createState() => _ElementUserToolsState();
}

class _ElementUserToolsState extends State<ElementUserTools> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        color: AppStore.colorWhite,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(widget.imgUrl))),
            ),
            const SizedBox(width: 8),
            const Expanded(child: SearchBar(hintText: "What's on you mind?",)),
            const SizedBox(width: 2),
            IconButton(
              splashColor: AppStore.colorTransparent,
                onPressed: () {
                  // open galery.
                },
                icon: const Icon(
                  CupertinoIcons.photo,
                  size: 25,
                  color: AppStore.colorGrey,
                ))
          ],
        ));
  }
}
