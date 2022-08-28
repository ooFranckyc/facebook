import 'package:facebook/models/chat_message.dart';
import 'package:facebook/utils/appstore.dart';
import 'package:flutter/material.dart';

class TextMessage extends StatelessWidget {
  const TextMessage({
    Key? key,
    required this.message,
  }) : super(key: key);

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
              color: message.isSender
                  ? AppStore.colorPrimary
                  : AppStore.colorWhiteBelge,
              borderRadius: BorderRadius.circular(10)),
          child: Text(
            message.text,
            style: TextStyle(
                color: message.isSender
                    ? Colors.white
                    : Theme.of(context).textTheme.bodyText1?.color),
          ),
        )
      ],
    );
  }
}
