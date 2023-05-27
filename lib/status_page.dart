import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
class StatusPage extends StatelessWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 13, 166, 108),
        child: const Center(child: Icon(Icons.camera_alt,color:Colors.white),),),
      backgroundColor: const Color.fromARGB(255, 36, 43, 54),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20,),
            ListTile(
              leading: Stack(
                children: [CircleAvatar(
                  backgroundColor: Colors.grey.shade600,
                  radius: 30,
                  child: const Center(
                      child:Icon(Icons.group, color: Colors.white),

                  ),
                ),
                  const Positioned(
                    bottom: -1,
                      right: -1,
                      child: Icon(CupertinoIcons.plus_circle_fill,color:Colors.green))
                ]
              ),
              title: const Text(
                "My Status",
                style: TextStyle(color: Colors.white),
              ),
              subtitle: const Text(
                "Tap to add status update",
                style: TextStyle(
                  color: Color.fromARGB(255, 116, 119, 124),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            const Padding(
              padding: EdgeInsets.only(left:20.0),
              child: Text("Recent",style: TextStyle(
                color: Color.fromARGB(255, 116, 119, 124),
              ),),
            ),
            const SizedBox(height: 20,),
            ListView.separated(
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
                        subtitle: Text(
                          DateTime.now().toString().substring(0, 11),
                          style: const TextStyle(
                            color: Color.fromARGB(255, 116, 119, 124),
                          ),),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
