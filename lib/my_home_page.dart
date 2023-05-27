import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Color> clrArr = [
      Colors.red,
      Colors.blueAccent,
      Colors.amber,
      Colors.greenAccent,
      Colors.pinkAccent,
      Colors.yellow
    ];
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          foregroundColor: Colors.white,
          title: const Text("Contact App"),
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/pro_pic.jpg"),
                      radius: 60,
                      backgroundColor: Colors.grey,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Saifullah Anjar",
                          style: TextStyle(fontSize: 25),
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_on),
                            Text("Dhanmondi, Dhaka")
                          ],
                        ),
                        Row(
                          children: [Icon(Icons.phone), Text("+880-XXX-XXX-XXXX")],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 150,right: 150),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: const BoxDecoration(
                            color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(3),),
                        ),

                        child: Center(child:Image.asset("assets/icons/fb.png",fit: BoxFit.cover,)),
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(3),),
                        ),
                        child: Center(child:Image.asset("assets/icons/insta.png",fit: BoxFit.cover,)),
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(3),),
                        ),
                        child: Center(child:Image.asset("assets/icons/linked.png",fit: BoxFit.cover,)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(color: Colors.grey[300],
                  borderRadius: const BorderRadius.all(Radius.circular(15))),
                  child: const ListTile(
                    leading: Icon(Icons.search),
                    title: Text("Search....."),
                    trailing: Icon(Icons.close),

                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(15),
                        height: 100,
                        decoration: BoxDecoration(
                            color: clrArr[index],
                            borderRadius: const BorderRadius.all(Radius.circular(7))),
                        child: const ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage("assets/images/pro_pic.jpg"),
                            radius: 30,
                            backgroundColor: Colors.grey,
                          ),
                          title: Text("MR. X"),
                          subtitle: Text(
                            "Contact No: +880-XXX-XXX-XXXX",
                            style: TextStyle(color: Colors.white),
                          ),
                          trailing: Icon(Icons.phone,color: Colors.white,),
                        ),
                      );//
                    })
              ],
            ),
          ),
        ));
  }
}
