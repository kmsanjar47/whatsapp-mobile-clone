import "package:flutter/material.dart";
class GroupPage extends StatelessWidget {
  const GroupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 36, 43, 54),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20,),
          const Text("Introducing communities",style: TextStyle(fontSize: 27,fontWeight:FontWeight.bold,color: Colors.white),),
          const SizedBox(height: 20,),
          const Text("Easily organize your related groups and send",
            style: TextStyle(
              fontSize: 15,
              color: Color.fromARGB(255, 116, 119, 124),
            ),),
          const SizedBox(height: 10,),
          const Text("announcements. Now, your communities, like",
            style: TextStyle(
              fontSize: 15,
              color: Color.fromARGB(255, 116, 119, 124),
            ),),
          const SizedBox(height: 10,),
          const Text("neighborhoods or scholls, can have their own",
            style: TextStyle(
              fontSize: 15,
              color: Color.fromARGB(255, 116, 119, 124),
            ),),
          const SizedBox(height: 10,),
          const Text("space.",
            style: TextStyle(
              fontSize: 15,
              color: Color.fromARGB(255, 116, 119, 124),
            ),),
          const SizedBox(height: 20,),
          Container(
            margin: const EdgeInsets.only(left: 50,right: 50),
            padding: const EdgeInsets.all(12),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Color.fromARGB(255, 13, 166, 108),
            ),
            child: const Center(child: Text("Start your community",style: TextStyle(fontSize:15,fontWeight:FontWeight.w400,color: Colors.black),),),
          )

        ],
      ),
    );
  }
}
