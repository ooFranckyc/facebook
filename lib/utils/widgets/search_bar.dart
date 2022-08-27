import 'package:facebook/utils/appstore.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final String hintText;
  const SearchBar({Key? key, required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        padding: const EdgeInsets.only(left: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: AppStore.colorWhiteBelge,
            borderRadius: BorderRadius.circular(10)),
        child: TextFormField(
          decoration: InputDecoration(
              focusedBorder: InputBorder.none,
              border: InputBorder.none,
              errorBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              focusedErrorBorder: InputBorder.none,
              hintText: hintText),
        ));
  }
}
