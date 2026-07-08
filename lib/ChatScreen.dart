import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {

  final String name;

  const ChatScreen({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(
     body: Column(
       children: [
         SizedBox(
           height: MediaQuery.of(context).size.height*0.8,
           child: Column(
             children: [
               Container(
                 padding: EdgeInsets.only(top: 30,bottom: 10,right: 20,left: 20),
                 color: Colors.white,
                 child: Row(
                   children: [
                     IconButton(onPressed: (){
                       Navigator.pop(context);
                     },
                         icon: Icon(Icons.arrow_back)),
                     SizedBox(
                       width: 10,
                     ),
                     CircleAvatar(
                       radius: 25,
                       backgroundColor: Colors.grey,
                       child: Icon(
                           Icons.person,
                         color: Colors.white,
                       ),
                     ),
                     SizedBox(
                       width: 10,
                     ),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text(
                             name,
                           style: TextStyle(
                             fontSize: 25,
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                          // Spacer(),
                         Text(
                             "online",
                           style: TextStyle(
                             color: Colors.grey,
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                       ],

                     ),
                     Spacer(),

                     Icon(Icons.videocam_outlined),

                     SizedBox(
                       width: 10,
                     ),
                     Icon(Icons.call_outlined),
                     // SizedBox(
                     //   width: 10,
                     // ),
                   ],
                 ),
               ),

              SizedBox(
                height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 50,
                    width: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),

                      color: Color.fromRGBO(180, 241, 185, 1),
                    ),
                    // margin: EdgeInsets.only(top: 20,left: 50),

                    child: Padding(
                      padding: EdgeInsetsGeometry.only(left: 10,top: 10,bottom: 10,right: 10),
                      child: Text(
                        "Hello Sir",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
               SizedBox(
                 height: 10,
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   Container(
                     height: 80,
                     width:350,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20),

                       color: Color.fromRGBO(180, 241, 185, 1),
                     ),
                     // margin: EdgeInsets.only(top: 20,left: 50),

                     child: Padding(
                       padding: EdgeInsetsGeometry.only(left: 20,top: 10,bottom: 10,right: 10),
                       child: Expanded(
                         child: Text(
                           "Would you like to order something",
                           style: TextStyle(
                             color: Colors.black,
                             fontWeight: FontWeight.bold,
                             fontSize: 20,
                           ),
                         ),
                       ),
                     ),
                   ),
                   SizedBox(
                     width: 20,
                   ),
                 ],
               ),
               SizedBox(
                 height: 10,
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   Container(
                     height: 80,
                     width:350,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20),

                       color: Color.fromRGBO(180, 241, 185, 1),
                     ),
                     // margin: EdgeInsets.only(top: 20,left: 50),

                     child: Padding(
                       padding: EdgeInsetsGeometry.only(left: 20,top: 10,bottom: 10,right: 10),
                       child: Expanded(
                         child: Text(
                           "Would you like to order something",
                           style: TextStyle(
                             color: Colors.black,
                             fontWeight: FontWeight.bold,
                             fontSize: 20,
                           ),
                         ),
                       ),
                     ),
                   ),
                   SizedBox(
                     width: 20,
                   ),
                 ],
               ),

             ],
           ),
         ),
         Spacer(),
         SizedBox( height: MediaQuery.of(context).size.height*0.15,
         child:
           Container(
             padding: EdgeInsets.only(top: 10),
             child: Column(
               // mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Container(
                   // padding: EdgeInsets.only(bottom: 0,top: 0),
                   // color: Colors.white70,
                   color: Colors.white70,
                   height: 110,
                   child: Row(
                     children: [
                       Icon(
                           Icons.add,
                            size: 50,
                       ),
                       Spacer(),
                       Column(
                         children: [
                           Spacer(),
                           Container(
                             width: 300,
                             child: TextField(
                               decoration: InputDecoration(
                                 enabledBorder: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(20),
                                   borderSide: BorderSide(
                                     color: Colors.black,
                                     width: 1
                                   ),
                                 ),
                                 border: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(20),
                                   borderSide: BorderSide(
                                     width: 1,
                                     color: Colors.black,
                                   ),
                                 ),

                               ),
                             ),
                           ),
                           Spacer(),
                           Container(
                             width: 200,
                             height: 2,
                             color: Colors.black,
                           ),
                         ],
                       ),
                       Spacer(),

                       Icon(Icons.photo_camera_outlined),
                       Spacer(),
                       Icon(Icons.mic_none),
                       Spacer(),
                     ],
                   ),
                 ),




               ],
             ),
           ),
           ),
       ],
     ),
    );
  }
}