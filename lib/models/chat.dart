class Chat {
  final String name, lastMessage, image, time;
  final bool isActive;
  final bool formSender;
  final int missingMessage;

  Chat(
      {this.name = '',
      this.lastMessage = '',
      this.image = '',
      this.time = '',
      this.isActive = false,
      this.formSender = false,
      this.missingMessage = 0});
}

List chatsData = [
  Chat(
      name: "Kristian Watson",
      lastMessage: "I'm pleased to hear that",
      image:
          "https://cdn.pixabay.com/photo/2019/12/11/20/45/girl-4689253__340.jpg",
      time: "now",
      isActive: true,
      formSender: false,
      missingMessage: 7),
  Chat(
      name: "Jarel Lampard",
      lastMessage: "Please check your github account",
      image:
          "https://images.unsplash.com/photo-1591470481729-2bcc11e3acb8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjR8fGJsYWNrJTIwbWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
      time: "1m",
      isActive: true,
      formSender: false,
      missingMessage: 0),
  Chat(
      name: "Jerome Bell",
      lastMessage: "I already have...",
      image:
          "https://images.unsplash.com/photo-1489980557514-251d61e3eeb6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTV8fG1hbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
      time: "8m",
      isActive: true,
      formSender: true,
      missingMessage: 1),
  Chat(
      name: "Jane Cooper",
      lastMessage: "Do you have update...",
      image:
          "https://images.unsplash.com/photo-1604004555489-723a93d6ce74?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8Z2lybHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
      time: "22m",
      isActive: false,
      formSender: false,
      missingMessage: 16),
  Chat(
      name: "Jacob Jones",
      lastMessage: "make me smile 😍",
      image:
          "https://cdn.pixabay.com/photo/2017/06/11/20/45/headshoot-2393474__340.jpg",
      time: "32m",
      isActive: true,
      formSender: true,
      missingMessage: 0),
  Chat(
      name: " Guys Hawkins",
      lastMessage: "Where did you get it done?",
      image:
          "https://cdn.pixabay.com/photo/2019/09/16/09/30/alone-4480441__340.jpg",
      time: "44m",
      isActive: false,
      formSender: false,
      missingMessage: 0),
  Chat(
      name: "Emmy Mo",
      lastMessage: "you too. bye Franck",
      image:
          "https://images.unsplash.com/photo-1549237511-bbe6a0979d6a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Njd8fG1hbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
      time: "47m",
      isActive: false,
      formSender: false,
      missingMessage: 0),
  Chat(
      name: "Alan Fisher",
      lastMessage: "Have a good me",
      image:
          "https://images.unsplash.com/photo-1615572359976-1fe39507ed7b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fGJsYWNrJTIwbWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
      time: "2h",
      isActive: true,
      formSender: true,
      missingMessage: 0),
  Chat(
      name: "Adeline Gates",
      lastMessage: "See you later Adeline.",
      image:
          "https://images.unsplash.com/photo-1563306406-e66174fa3787?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGdpcmx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
      time: "4h",
      isActive: false,
      formSender: true,
      missingMessage: 03),
  Chat(
      name: "El Syndie",
      lastMessage: "What do you do beautiful franck?",
      image:
          "https://images.unsplash.com/photo-1530021232320-687d8e3dba54?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzR8fGdpcmx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
      time: "8h",
      isActive: false,
      formSender: false,
      missingMessage: 03),
];
