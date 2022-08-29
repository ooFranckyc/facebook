import 'package:facebook/utils/appstore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';

class MarketplaceItem extends StatefulWidget {
  final Color color;
  final String itemName;
  final double itemPrice;
  const MarketplaceItem(
      {Key? key,
      required this.color,
      required this.itemName,
      required this.itemPrice})
      : super(key: key);

  @override
  State<MarketplaceItem> createState() => _MarketplaceItemState();
}

class _MarketplaceItemState extends State<MarketplaceItem> {
  bool isCheck = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.topLeft,
            children: [
              Container(
                height: 155,
                decoration: BoxDecoration(
                    color: widget.color,
                    borderRadius: BorderRadius.circular(12)),
              ),
              Bounce(
                duration: const Duration(milliseconds: 180),
                onPressed: () {
                  setState(() {
                    isCheck = !isCheck;
                  });
                },
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 20),
                    child: Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                            color: Colors.black45, shape: BoxShape.circle),
                        child: Icon(
                          isCheck
                              ? CupertinoIcons.bookmark_solid
                              : CupertinoIcons.bookmark,
                          size: 25,
                          color: AppStore.colorWhite,
                        ))),
              )
            ],
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.itemName,
                      style: const TextStyle(
                          color: AppStore.colorBlack,
                          fontWeight: FontWeight.w400),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "\$ ${widget.itemPrice.toString()}",
                      style: const TextStyle(
                          color: AppStore.colorBlack,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                  ],
                ),
                Container(
                  width: 40,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: widget.color, shape: BoxShape.circle),
                  child: const Icon(
                    Icons.shopping_cart,
                    color: AppStore.colorWhite,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
