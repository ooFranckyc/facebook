import 'package:facebook/models/chat_message.dart';
import 'package:facebook/screens/home/fragments/messenger_fragment/message_screens/widgets/cif.dart';
import 'package:facebook/screens/home/fragments/messenger_fragment/message_screens/widgets/message.dart';
import 'package:facebook/utils/appstore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      backgroundColor: AppStore.colorWhite,
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ListView.builder(
              itemCount: demeChatMessages.length,
              itemBuilder: (context, index) =>
                  Message(message: demeChatMessages[index]),
            ),
          )),
          const ChatInputField()
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: AppStore.colorWhite,
      elevation: 0.0,
      title: Row(
        children: [
          IconButton(
            visualDensity: VisualDensity.adaptivePlatformDensity,
            onPressed: () {},
            icon: const Icon(CupertinoIcons.back,
                size: 25, color: AppStore.colorPrimary),
          ),
          const CircleAvatar(
            backgroundImage: AssetImage('assets/icons/user.jpg'),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Kristin Watson',
                  style: TextStyle(
                      fontSize: 15,
                      color: AppStore.colorBlack,
                      letterSpacing: 1.20)),
              Text('online',
                  style: TextStyle(
                      fontSize: 13,
                      color: AppStore.colorPrimary,
                      letterSpacing: .80,
                      fontWeight: FontWeight.bold))
            ],
          )
        ],
      ),
      actions: [
        IconButton(
            onPressed: () {
              // call with vocal mod target user
            },
            icon: const Icon(Icons.call_rounded,
                size: 25, color: AppStore.colorPrimary)),
        IconButton(
            onPressed: () {
              // call with video mod target user
            },
            icon: const Icon(
              Icons.videocam_rounded,
              size: 25,
              color: AppStore.colorPrimary,
            )),
        const SizedBox(
          width: 10,
        )
      ],
    );
  }
}
