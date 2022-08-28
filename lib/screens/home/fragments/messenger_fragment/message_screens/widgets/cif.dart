import 'package:facebook/utils/appstore.dart';
import 'package:facebook/utils/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';

class ChatInputField extends StatelessWidget {
  const ChatInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10 / 2),
        color: AppStore.colorWhite,
        child: SafeArea(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Bounce(
              duration: const Duration(milliseconds: 180),
              onPressed: () {},
              child: const Icon(
                Icons.attach_file,
                color: AppStore.colorGrey,
              ),
            ),
            const SizedBox(width: 15),
            const Expanded(child: SearchBar(hintText: "Type a message...")),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(width: 10),
                Bounce(
                    duration: const Duration(milliseconds: 180),
                    onPressed: () {},
                    child: const Icon(Icons.sentiment_satisfied_alt_rounded,
                        color: AppStore.colorGrey, size: 25)),
                const SizedBox(width: 10),
                Bounce(
                    duration: const Duration(milliseconds: 180),
                    onPressed: () {},
                    child: const Icon(Icons.mic_sharp,
                        color: AppStore.colorGrey, size: 25)),
              ],
            )
          ],
        )),
      ),
    );
  }
}
