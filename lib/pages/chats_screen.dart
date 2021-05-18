import 'package:flutter/material.dart';
import 'package:whatshap/models/chat_model.dart';
 class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
   @override
   Widget build(BuildContext context) {
     return new ListView.builder(
     itemCount: dummtData.length,
       itemBuilder: (context,i)=>new Column(
         children: <Widget>[
           new Divider(
             height: 10.0,
           ),
           new ListTile(
             leading: new CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
               backgroundColor: Colors.grey,
               backgroundImage: new NetworkImage(dummtData[i].avatarUrl),

             ),
             title:new Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget>[
                 new Text(dummtData[i].name,style: new TextStyle(
                   fontWeight: FontWeight.bold,

                 ),
                 ),
                 new Text(dummtData[i].time,
                 style: new TextStyle(
                   fontWeight: FontWeight.bold,
                   color: Colors.grey,
                   fontSize: 14.0,

                 ),)

               ],
             ) ,
           )
         ],
       ),
     );
   }
}
 