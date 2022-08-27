import 'package:facebook/utils/appstore.dart';
import 'package:flutter/material.dart';

class FaceBookDivider extends StatelessWidget {
  const FaceBookDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 15,
      thickness: 10,
      color: AppStore.colorWhiteBelge,
    );
  }
}
