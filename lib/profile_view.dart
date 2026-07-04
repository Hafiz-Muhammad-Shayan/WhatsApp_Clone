import 'package:flutter/material.dart';
import 'package:whatsapp_clone/listgenerator.dart';
import 'package:flutter/cupertino.dart';
class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState(
  );
}

class _ProfileViewState extends State<ProfileView> {
  List<String> friendList = ["Shayan","Aaliyan","Yasir", "Umer", "Fahad", "Hasnain"];
  List<String> messageList = ["Hello bro!","Kahan ho?","Send me your email", "Are you coming?", "Dinner is ready", "Bye"];
  List<String> timeList = ["9 : 00 am", "12 : 00 pm", "Yesterday", "Yesterday", "Monday", "Sunday"];
  @override
  Widget build(BuildContext context) {
  // double  hight = MediaQuery.of(context).size.height;
  // double  width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: MediaQuery.of(context).size.height * 0.9,
          width: MediaQuery.of(context).size.width * 1,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10),
                child: Row(
                  children: [
                    Text(
                        "WhatsApp Plus",
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        // height: hight / 0.5,

                      ),
                    ),
                Spacer(),

                    Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.camera_alt_outlined,
                            color: Colors.green,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.more_vert,
                            color: Colors.green,
                          ),
                        ],
                      ),
                    ),


                  ],
                ),
              ),

              SizedBox(
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search...",
                    prefixIcon: Icon(Icons.search),
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 20,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                          minimumSize: Size(50, 40),
                      ),
                        onPressed: (){},
                        child: Text(
                            "All",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        )),

                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: Size(70, 40),
                        ),
                        onPressed: (){},
                        child: Text(
                          "Unread",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        )),

                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: Size(90, 40),
                        ),
                        onPressed: (){},
                        child: Text(
                          "Favorites",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        )),

                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: Size(70, 40),
                        ),
                        onPressed: (){},
                        child: Text(
                          "Groups",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ],
                ),
              ),

              SizedBox(
                height: 20,
              ),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: ListView.builder(
                    itemCount: friendList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 90,
                        // margin: EdgeInsets.only(bottom: 25),
                        child: Column(
                          children: [
                            ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.blue,
                              ),
                              // tileColor: Colors.red,
                              title: Text(
                                  friendList[index],
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                              ),
                              subtitle: Text(
                                messageList[index],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                              trailing: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    timeList[index],
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),


                                  CircleAvatar(
                                    radius: 10,
                                    foregroundColor: Colors.white,
                                    backgroundColor: Colors.green,
                                    child: Text("3"),
                                  ),

                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height: 2,
                                  width: 340,
                                  color: Colors.grey.shade200,
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),


        bottomNavigationBar: SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,

          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: 0,

            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.grey,
            backgroundColor: Colors.white,

            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.chat),
                label: 'Chats',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.call),
                label: 'Calls',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person_3_fill),
                label: 'Communities',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.donut_large),
                label: 'Status',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ],
          )


        ),
      ),
    );
  }
}
