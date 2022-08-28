import 'package:facebook/models/chat.dart';
import 'package:facebook/screens/home/fragments/messenger_fragment/message_screens/message_screen.dart';
import 'package:facebook/screens/home/fragments/messenger_fragment/widgets/chat_card.dart';
import 'package:facebook/utils/appstore.dart';
import 'package:facebook/utils/widgets/search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessengerFragment extends StatefulWidget {
  const MessengerFragment({Key? key}) : super(key: key);

  @override
  State<MessengerFragment> createState() => _MessengerFragmentState();
}

class _MessengerFragmentState extends State<MessengerFragment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Text(
                "Chats",
                style: TextStyle(
                    color: AppStore.colorPrimary,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: AppStore.colorPrimary,
                size: 30,
              )
            ],
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.mode_edit_rounded,
                size: 25,
                color: AppStore.colorPrimary,
              ),
            )
          ],
          backgroundColor: AppStore.colorWhite,
        ),
        backgroundColor: AppStore.colorWhite,
        body: Column(
          children: [
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SearchBarStackIcon(
                    hintText: "Messages", icon: CupertinoIcons.search)),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: chatsData.length,
                physics: const BouncingScrollPhysics(),
                itemBuilder: ((context, index) => ChatCard(
                      chat: chatsData[index],
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MessageScreen())),
                    )),
              ),
            )
          ],
        ));
  }
}
