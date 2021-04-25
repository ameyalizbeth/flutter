import 'package:flutter/material.dart';
import 'package:whatsapp/callscreen.dart';
import 'package:whatsapp/statuscreen.dart';

import 'package:whatsapp/camerascreen.dart';
import 'package:whatsapp/chatscreen.dart';

class WhatsappHome extends StatefulWidget {
  @override
  _WhatsappHomeState createState() => _WhatsappHomeState();
}

class _WhatsappHomeState extends State<WhatsappHome>with SingleTickerProviderStateMixin {
  TabController _tabcontroller;
  int _current=0;
  @override
  void initState() {
    
    super.initState();
    _tabcontroller = new TabController(vsync: this, initialIndex:1, length:4);
    _tabcontroller.addListener(_handleTabIndex);
  }
  @override
  void dispose(){
    _tabcontroller.removeListener(_handleTabIndex);
    _tabcontroller.dispose();
  }
  void _handleTabIndex(){
    setState(() {
      _current = _tabcontroller.index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title:new Text("whatsapp"),
        elevation:0.7,
        actions: <Widget>[
          new Icon(Icons.search),
           SizedBox(
              width:10.0
              ),
        
          new Icon(Icons.more_vert),
        ],
        bottom: new TabBar(
          controller: _tabcontroller,
          indicatorColor: Colors.white,
          tabs:<Widget>[
            new Tab(icon:new Icon(Icons.camera_alt)),
            new Tab(text:"CHATS"),
            new Tab(text:"STATUS"),
            new Tab(text:"CALLS"),
          ] ),
      ),
      body: new TabBarView(
        controller:_tabcontroller,
        children:<Widget>[
          new CameraScreen(),
          new ChatScreen(),
          new StatusScreen(),
          new CallScreen(),
        ],
      ),
      floatingActionButton:Bbuttons(),
    );
  }
  Widget Bbuttons(){
  return _current == 2
  ?Column(
    mainAxisAlignment: MainAxisAlignment.end,
      children:<Widget>[
       
           FloatingActionButton(
          backgroundColor: Colors.lightBlueAccent[900],
          child: new Icon(Icons.edit),
          onPressed: ()=>print("open chats")),
          SizedBox(
            height: 10.0,
          ),
           FloatingActionButton(
          backgroundColor: Colors.green[900],
          child: new Icon(Icons.camera_alt),
          onPressed: ()=>print("open chats")),
      ],
  )
        :FloatingActionButton(
        backgroundColor: Colors.green[900],
        child: new Icon(Icons.message),
        onPressed: ()=>print("open chats"));

}

}

