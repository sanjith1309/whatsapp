import 'package:flutter/material.dart';
import 'package:whatsappui/categories/status.dart';
import 'package:whatsappui/widgets/statuswidget.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<status> statusList=[
      status(
        imagelink:
            "https://assets.bwbx.io/images/users/iqjWHBFdfxIU/i_m5MIjhFEss/v1/-1x-1.jpg",
        name: "Elon Musk",
        msg: '5 minutes ago',
      ),
      status(
        imagelink:
            "https://i.insider.com/60c9ffed20bd1300181c67f7?width=1000&format=jpeg&auto=webp",
        name: "Dominic Toretto",
        msg: '30 minutes ago',
      ),
      status(
        imagelink:
            "https://static1.moviewebimages.com/wordpress/wp-content/uploads/article/a3UHFy06inDJ5RDLAjGP0vAypNemxx.jpg",
        name: "Brain O'Conner",
        msg: '3 hours ago',
      ),
      status(
        imagelink:
            "https://static.toiimg.com/thumb/msid-99508259,width-960,height-1280,resizemode-6.cms",
        name: "Mark Zuckerberg",
        msg: '24 hours ago',
      ),
    ];
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
        itemCount: statusList.length,
        itemBuilder: (ctx, index) => statuswidget(
          image: statusList[index].imagelink,
          name: statusList[index].name,
          msg: statusList[index].msg,
        ),
        )
      ),
    );
  }
}