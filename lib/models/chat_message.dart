enum ChatMessageType { text, audio, image, video }

enum MessageStatus { notSent, notView, viewed }

class ChatMessage {
  final String text;
  final ChatMessageType messageType;
  final MessageStatus messageStatus;
  final bool isSender;
  // simulate timer sender msg variable
  final bool isLongAppendMessage;

  ChatMessage({
    this.text = '',
    required this.messageType,
    required this.messageStatus,
    required this.isSender,
    required this.isLongAppendMessage
  });
}

List demeChatMessages = [
  // guidline :
  // from -->, represent you contact response
  // from <--, represent you message
  ChatMessage(
    text: "Franck, do you know our office is\norganizing a trip to the island?🤓\nAre you comming?",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: false,
    isLongAppendMessage: true
  ),
  ChatMessage(
    text: "Oh that sounds great is it this weekend?",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: true,
    isLongAppendMessage: false
  ),
  ChatMessage(
    text: "No the next one",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: false,
    isLongAppendMessage: false
  ),
  ChatMessage(
    text: "Do you have any plans for the next\n saturday and sunday?",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: false,
    isLongAppendMessage: false
  ),
  ChatMessage(
    text: "What a plty🥱",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: true,
    isLongAppendMessage: false
  ),
  ChatMessage(
    text: "It not possible.",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: false,
    isLongAppendMessage: false
  ),
  ChatMessage(
    text: "I already have some big plans.",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.notView,
    isSender: true,
    isLongAppendMessage: false
    ),
];