import 'package:flutter/material.dart';
import 'package:whatsappui/categories/call.dart';
import 'package:whatsappui/widgets/callwidget.dart';

class callScreen extends StatelessWidget {
  const callScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<call> callList = [
      call(
        imagelink:
            "https://assets.bwbx.io/images/users/iqjWHBFdfxIU/i_m5MIjhFEss/v1/-1x-1.jpg",
        name: "Elon Musk",
        msg: 'Today 1:00',
        caller: const Icon(
          Icons.call,
          color: Color(0xFF075E54),
          size: 35,
        ),
      ),
      call(
        imagelink:
            "https://i.insider.com/60c9ffed20bd1300181c67f7?width=1000&format=jpeg&auto=webp",
        name: "Dominic Toretto",
        msg: 'Yesterday 19:00',
        caller: const Icon(
          Icons.call_missed_rounded,
          color: Colors.red,
          size: 35,
        ),
      ),
      call(
        imagelink:
            "https://static1.moviewebimages.com/wordpress/wp-content/uploads/article/a3UHFy06inDJ5RDLAjGP0vAypNemxx.jpg",
        name: "Brain O'Conner",
        msg: '12/09/2013',
        caller: const Icon(
          Icons.videocam,
          color: Color(0xFF075E54),
          size: 35,
        ),
      ),
      call(
        imagelink:
            "https://static.toiimg.com/thumb/msid-99508259,width-960,height-1280,resizemode-6.cms",
        name: "Mark Zuckerberg",
        msg: '13/04/2013',
        caller: const Icon(
          Icons.call,
          color:Color(0xFF075E54),
          size: 35,
        ),
      ),
      call(
        imagelink:
            "https://media.gettyimages.com/id/115830223/photo/sung-kang-during-11th-pusan-international-film-festival-star-summit-asia-asian-faces-in.jpg?s=612x612&w=gi&k=20&c=XiYcfqftVI-rW-GoTNDtIvAEN6wmVTCkDRqccMmivbI=",
        name: "Han Lue",
        msg: '09/8/2011',
        caller: const Icon(
          Icons.call_missed_rounded,
          color: Colors.red,
          size: 35,
        ),
      ),
      call(
        imagelink:
            "https://assets.bwbx.io/images/users/iqjWHBFdfxIU/i_m5MIjhFEss/v1/-1x-1.jpg",
        name: "Elon Musk",
        msg: '8/08/2011',
        caller: const Icon(
          Icons.call,
          color: Color(0xFF075E54),
          size: 35,
        ),
      ),
      call(
        imagelink:
            "https://i.insider.com/60c9ffed20bd1300181c67f7?width=1000&format=jpeg&auto=webp",
        name: "Dominic Toretto",
        msg: '01/03/2023',
        caller: const Icon(
          Icons.call_missed_rounded,
          color: Colors.red,
          size: 35,
        ),
      ),
      call(
        imagelink:
            "https://static1.moviewebimages.com/wordpress/wp-content/uploads/article/a3UHFy06inDJ5RDLAjGP0vAypNemxx.jpg",
        name: "Brain O'Conner",
        msg: '12/09/2013',
        caller: const Icon(
          Icons.call_missed_rounded,
          color: Colors.red,
          size: 35,
        ),
      ),
      call(
        imagelink:
            "https://static.toiimg.com/thumb/msid-99508259,width-960,height-1280,resizemode-6.cms",
        name: "Mark Zuckerberg",
        msg: '13/04/2013',
        caller: const Icon(
          Icons.call,
          color: Color(0xFF075E54),
          size: 35,
        ),
      ),
      call(
        imagelink:
            "https://media.gettyimages.com/id/115830223/photo/sung-kang-during-11th-pusan-international-film-festival-star-summit-asia-asian-faces-in.jpg?s=612x612&w=gi&k=20&c=XiYcfqftVI-rW-GoTNDtIvAEN6wmVTCkDRqccMmivbI=",
        name: "Han Lue",
        msg: '09/8/2011',
        caller: const Icon(
          Icons.call_missed_rounded,
          color: Colors.red,
          size: 35,
        ),
      ),
      
    ];
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
          itemCount: callList.length,
          itemBuilder: (ctx, index) => callwidget(
            image: callList[index].imagelink,
            name: callList[index].name,
            msg: callList[index].msg,
            call: callList[index].caller,
          ),
        ),
      ),
    );
  }
}
