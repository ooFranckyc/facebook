import 'package:facebook/utils/appstore.dart';
import 'package:flutter/material.dart';

class MarketplaceArticle extends StatelessWidget {
  final String desc;
  final String price;
  const MarketplaceArticle({Key? key, required this.desc, required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 170,
            height: 180,
            margin: const EdgeInsets.only(bottom: 5),
            decoration: BoxDecoration(
                color: AppStore.colorWhiteBelge,
                borderRadius: BorderRadius.circular(8)),
          ),
          SizedBox(
            width: 170,
            child: Text(
              desc,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            "\$$price",
            style: const TextStyle(
                color: AppStore.colorBlack,
                fontWeight: FontWeight.bold,
                fontSize: 18),
          )
        ],
      ),
    );
  }
}
