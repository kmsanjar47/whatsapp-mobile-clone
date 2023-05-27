import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:newapp/chat_page.dart";
import "package:newapp/status_page.dart";

import "calls_page.dart";
import "group_page.dart";

class WhatsAppPage extends StatelessWidget {
  const WhatsAppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 36, 43, 54),
        appBar: AppBar(
          foregroundColor: const Color.fromARGB(255, 115, 129, 173),
          backgroundColor: const Color.fromARGB(255, 51, 62, 79),
          title: const Text("WhatsApp"),
          actions: const [
            Icon(Icons.camera_alt_outlined),
            SizedBox(width: 12,),
            Icon(Icons.search),
            SizedBox(width: 10,),
            Icon(Icons.more_vert),
            SizedBox(width: 10,),
          ],
          bottom: const TabBar(
            indicatorColor: Color.fromARGB(255, 13, 166, 108),
            labelColor: Color.fromARGB(255, 13, 166, 108),
            unselectedLabelColor: Color.fromARGB(255, 115, 129, 173),
              tabs: [
            Tab(

              icon: Icon(CupertinoIcons.group_solid),
            ),
            Tab(text: "Chats",),
            Tab(text: "Status",),
            Tab(text: "Calls",),
          ]),
        ),
        body: const TabBarView(
          children: [
            GroupPage(),
            ChatPage(),
            StatusPage(),
            CallsPage()
          ],
        ),
      ),
    );
  }
}
