import "package:flutter/material.dart";
import "package:newapp/third_page.dart";

import "my_home_page.dart";

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
                tabs: [
                  Tab(
                    text: "First",
                    icon: Icon(Icons.search),
                  ),
                  Tab(
                    text: "Second",
                    icon: Icon(Icons.close),
                  ),
                ]),
          ),
          body: TabBarView(
            children: [Center(child: MyHomePage()), ThirdPage()],
          )),
    );
  }
}
