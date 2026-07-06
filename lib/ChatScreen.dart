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
       ],
     ),
    );
  }
}