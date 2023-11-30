import 'package:flutter/material.dart';
import 'package:whatsappui/categories/chat.dart';
import 'package:whatsappui/widgets/chatwidget.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    List<chat> chatList = [
      chat(
          imagelink:
              "https://static1.moviewebimages.com/wordpress/wp-content/uploads/article/a3UHFy06inDJ5RDLAjGP0vAypNemxx.jpg",
          name: "Brain O'Conner",
          msg: "Porsche 911 Carrera",
          time: '12.00'),
      chat(
          imagelink:
              "https://i.insider.com/60c9ffed20bd1300181c67f7?width=1000&format=jpeg&auto=webp",
          name: "Dominic Toretto",
          msg: "It's been a long day without you my friend",
          time: '18.20'),
      chat(
          imagelink:
              "https://media.gettyimages.com/id/115830223/photo/sung-kang-during-11th-pusan-international-film-festival-star-summit-asia-asian-faces-in.jpg?s=612x612&w=gi&k=20&c=XiYcfqftVI-rW-GoTNDtIvAEN6wmVTCkDRqccMmivbI=",
          name: "Han Lue",
          msg: "Unleashing JDM vibes with a sleek new ride!",
          time: '1.50'),
      chat(
          imagelink:
              "https://assets.bwbx.io/images/users/iqjWHBFdfxIU/i_m5MIjhFEss/v1/-1x-1.jpg",
          name: "Elon Musk",
          msg: "Get a BMW not Tesla",
          time: '2.00'),
      chat(
          imagelink:
              "https://static.toiimg.com/thumb/msid-99508259,width-960,height-1280,resizemode-6.cms",
          name: "Mark Zuckerberg",
          msg: "Introducing reels on WhatsApp!!",
          time: 'Today'),
      chat(
          imagelink:
              "https://static1.moviewebimages.com/wordpress/wp-content/uploads/article/a3UHFy06inDJ5RDLAjGP0vAypNemxx.jpg",
          name: "Brain O'Conner",
          msg: "Porsche 911 Carrera",
          time: '12.00'),
      chat(
          imagelink:
              "https://i.insider.com/60c9ffed20bd1300181c67f7?width=1000&format=jpeg&auto=webp",
          name: "Dominic Toretto",
          msg: "It's been a long day without you my friend",
          time: '18.20'),
      chat(
          imagelink:
              "https://media.gettyimages.com/id/115830223/photo/sung-kang-during-11th-pusan-international-film-festival-star-summit-asia-asian-faces-in.jpg?s=612x612&w=gi&k=20&c=XiYcfqftVI-rW-GoTNDtIvAEN6wmVTCkDRqccMmivbI=",
          name: "Han Lue",
          msg: "Unleashing JDM vibes with a sleek new ride!",
          time: '1.50'),
      chat(
          imagelink:
              "https://assets.bwbx.io/images/users/iqjWHBFdfxIU/i_m5MIjhFEss/v1/-1x-1.jpg",
          name: "Elon Musk",
          msg: "Get a BMW not Tesla",
          time: '2.00'),
      chat(
          imagelink:
              "https://static.toiimg.com/thumb/msid-99508259,width-960,height-1280,resizemode-6.cms",
          name: "Mark Zuckerberg",
          msg: "Introducing reels on WhatsApp!!",
          time: 'Today'),
    ];
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
          itemCount: chatList.length,
          itemBuilder: (ctx, index) => chatwidget(
            image: chatList[index].imagelink,
            name: chatList[index].name,
            msg: chatList[index].msg,
            time: chatList[index].time,
          ),
        ),
      ),
    );
  }
}
