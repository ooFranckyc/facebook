import 'package:facebook/models/chat_message.dart';
import 'package:facebook/screens/home/fragments/messenger_fragment/message_screens/widgets/audio_messages.dart';
import 'package:facebook/screens/home/fragments/messenger_fragment/message_screens/widgets/text_message.dart';
import 'package:facebook/screens/home/fragments/messenger_fragment/message_screens/widgets/video_message.dart';
import 'package:facebook/utils/appstore.dart';
import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  const Message({
    Key? key,
    required this.message,
  }) : super(key: key);

  final ChatMessage message;
  @override
  Widget build(BuildContext context) {
    Widget messageContaint(ChatMessage message) {
      switch (message.messageType) {
        case ChatMessageType.text:
          return TextMessage(message: message);
        case ChatMessageType.audio:
          return AudioMessage(message: message);
        case ChatMessageType.video:
          return VideoMessage(message: message);
        default:
          return const SizedBox();
      }
    }

    return Padding(
      padding: const EdgeInsets.only(top: 3),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(message.isLongAppendMessage ? "August, 15" : "",
              style: const TextStyle(
                  color: AppStore.colorGrey,
                  fontSize: 12,
                  fontWeight: FontWeight.w400)),
          const SizedBox(height: 15),
          // messages.
          Column(
            crossAxisAlignment: message.isSender
                ? CrossAxisAlignment.end
                : CrossAxisAlignment.start,
            mainAxisAlignment: message.isSender
                ? MainAxisAlignment.end
                : MainAxisAlignment.start,
            children: [
              messageContaint(message),
              if (message.isSender)
                MessageStatusDot(status: message.messageStatus),
              if (!message.isSender) ...[
                const CircleAvatar(
                  radius: 12,
                  backgroundImage: AssetImage('assets/icons/user.jpg'),
                ),
                const SizedBox(
                  width: 3,
                )
              ],
            ],
          ),
        ],
      ),
    );
  }
}

class MessageStatusDot extends StatelessWidget {
  final MessageStatus? status;

  const MessageStatusDot({Key? key, this.status}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Color dotColor(MessageStatus status) {
      switch (status) {
        case MessageStatus.notSent:
          return Colors.red;
        case MessageStatus.notView:
          return Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.1);
        case MessageStatus.viewed:
          return AppStore.colorPrimary;
        default:
          return Colors.transparent;
      }
    }

    return Container(
      margin: const EdgeInsets.only(left: 5),
      height: 15,
      width: 12,
      decoration: BoxDecoration(
        color: dotColor(status!),
        shape: BoxShape.circle,
      ),
      child: Icon(
        status == MessageStatus.notSent ? Icons.close : Icons.done,
        size: 11,
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
    );
  }
}
