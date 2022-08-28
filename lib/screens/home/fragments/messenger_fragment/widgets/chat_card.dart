import 'package:facebook/models/chat.dart';
import 'package:facebook/utils/appstore.dart';
import 'package:flutter/material.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({
    Key? key,
    required this.chat,
    required this.press,
  }) : super(key: key);

  final Chat chat;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Row(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 27,
                  backgroundImage: NetworkImage(chat.image),
                ),
                if (chat.isActive)
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      height: 16,
                      width: 16,
                      decoration: BoxDecoration(
                        color: AppStore.colorGreen,
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: Theme.of(context).scaffoldBackgroundColor,
                            width: 2.5),
                      ),
                    ),
                  ),
              ],
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      chat.name,
                      style: const TextStyle(
                          color: AppStore.colorBlack,
                          fontSize: 16,
                          letterSpacing: .55,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 3),
                    Row(
                      children: [
                        Opacity(
                            opacity: 0.64,
                            child: chat.formSender
                                ? Row(
                                    children: [
                                      const Text(
                                        "You : ",
                                        style: TextStyle(
                                            color: AppStore.colorPrimary,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13),
                                      ),
                                      Text(
                                        chat.lastMessage,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      )
                                    ],
                                  )
                                : Text(
                                    chat.lastMessage,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  )),
                        const SizedBox(width: 5),
                        Opacity(
                          opacity: 0.64,
                          child: Text(
                            chat.time,
                            style: const TextStyle(
                                color: AppStore.colorGrey,
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            chat.missingMessage == 0
                ? Container()
                : Container(
                    width: 25,
                    height: 25,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        color: AppStore.colorPrimary, shape: BoxShape.circle),
                    child: Text(
                      chat.missingMessage.toString(),
                      style: const TextStyle(
                          color: AppStore.colorWhite,
                          fontWeight: FontWeight.bold,
                          fontSize: 11),
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
