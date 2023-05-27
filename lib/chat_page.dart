import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {},
      backgroundColor: const Color.fromARGB(255, 13, 166, 108),
      child: const Center(child: Icon(Icons.message),),),
      backgroundColor: const Color.fromARGB(255, 36, 43, 54),
      body: SingleChildScrollView(
        child: ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 20,
              );
            },
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 3,bottom: 3),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey.shade600,
                    radius: 30,
                    child: Center(
                      child: Icon(
                        Icons.group,
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ),
                  title: const Text(
                    "Title",
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: const Row(
                    children: [
                      Icon(Icons.done_all,color:Colors.blue,size: 20,),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        "message",
                        style: TextStyle(
                          color: Color.fromARGB(255, 116, 119, 124),
                        ),
                      )
                    ],
                  ),
                  trailing: Text(
                    DateTime.now().toString().substring(0, 11),
                    style: const TextStyle(
                      color: Color.fromARGB(255, 116, 119, 124),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
