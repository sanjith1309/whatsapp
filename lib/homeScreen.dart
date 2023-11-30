import 'package:flutter/material.dart';
import 'package:whatsappui/chatsscreen.dart';
import 'package:whatsappui/callerscreen.dart';
import 'package:whatsappui/statusscreen.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF075E54),
        title: const Text(
          "WhatsApp",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 210, 210, 210),
          ),
        ),  
        actions: [
          const Tab(
              icon: Icon(Icons.camera_alt_outlined),
            ),
            SizedBox(width: 2,),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          PopupMenuButton<String>(
            icon: Icon(Icons.more_vert),
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext contesxt) {
              return [
                const PopupMenuItem(
                  child: Text("New group"),
                  value: "New group",
                ),
                const PopupMenuItem(
                  child: Text("New broadcast"),
                  value: "New broadcast",
                ),
                const PopupMenuItem(
                  child: Text("Whatsapp Web"),
                  value: "Whatsapp Web",
                ),
                const PopupMenuItem(
                  child: Text("Starred messages"),
                  value: "Starred messages",
                ),
                const PopupMenuItem(
                  child: Text("Settings"),
                  value: "Settings",
                ),
              ];
            },
          )
        ],
        bottom: TabBar(
          controller: _controller,
          indicatorColor: Colors.white,
          tabs: const [
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "CHATS",
            ),
            Tab(
              text: "CALLS",
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children:const  [
          StatusScreen(),
          ChatScreen(),
          callScreen(),
        ],
      ),
    );
  }
}
