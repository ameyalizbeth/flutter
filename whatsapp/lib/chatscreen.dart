import 'package:flutter/material.dart';
import 'package:whatsapp/classmodel.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return new ListView.builder(
     itemCount: dynamicData.length,
itemBuilder: (_,i)=>new Column(
  children:<Widget>[
    Divider(
      height:10.0,
    ),
    new ListTile(
      leading:CircleAvatar(backgroundColor: Colors.grey,
      backgroundImage: NetworkImage(dynamicData[i].url),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:<Widget>[
                new Text(
          dynamicData[i].name,
          style:TextStyle(fontWeight:FontWeight.bold),
        ),
        new Text(
          dynamicData[i].time,
          style:TextStyle(color: Colors.grey,fontSize: 14.0),
        ),
              ] 
      ),
      subtitle: Container(
        padding: EdgeInsets.only(top:5.0),
        child: new Text(
          dynamicData[i].message,
          style:TextStyle(fontWeight:FontWeight.bold),
        ),
        ),
    )
  ]
),
   
      
    );
  }
}