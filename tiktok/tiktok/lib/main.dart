import 'package:flutter/material.dart';
import 'package:tiktok/icons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

Widget _getSocialAction({
  String title,IconData icon
})
{
  return Container(width: 60.0,height:60.0,
  child:Column(
    children:<Widget>[
      Icon(icon,size:25.0,color:Colors.grey[300]),
      Padding(padding:EdgeInsets.only(top:20.0),
      child: Text(title,style:TextStyle(fontSize: 12.0)),
      )
    ],
  ));
}


  Widget get topsection => Container(
     height:100.0,
     margin:EdgeInsets.only(top:60.0),
     child:Text('following    for u',
     

     )
    
  );
  Widget get bottomsection=>Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children:[
      Icon(TikTokIcons.home,color:Colors.white,size:20.0),
       Icon(TikTokIcons.search,color:Colors.white,size:20.0),
        Icon(TikTokIcons.messages,color:Colors.white,size:20.0),
         Icon(TikTokIcons.profile,color:Colors.white,size:20.0),
    ],
  );
 
 
 
  Widget get actiontoolbar=>Container(
                width:100.0,
                
                child:Column(
                  mainAxisSize: MainAxisSize.min,
                  children:[
                      _getSocialAction(icon:TikTokIcons.heart,title: '3.2m'),
                      _getSocialAction(icon:TikTokIcons.chat_bubble,title: '16.4k'),
                      _getSocialAction(icon:TikTokIcons.reply,title: 'share')
                  ],
                  

                  
                ),
              );
  Widget get videodescription=>Expanded(
              child:
              Container(
                            height:70.0,
                            padding:EdgeInsets.only(left:10.0),
                              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:<Widget>[
                    Text("@ameya",style:TextStyle(fontWeight: FontWeight.bold),),
                    Text('video title and some stuff'),
                    Row(
                      children: <Widget>[
                        Icon(Icons.music_note,size:15.0,color:Colors.white),
                        Text('artist name-album name-song',style:TextStyle(fontSize:12.0))
                      ],
                    )
                  ],
                ),
              ));
  Widget get middlesection => Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.end,
              children:<Widget>[
              videodescription,
              actiontoolbar
            ]),
            );
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'TIKTOKUI',
      theme:ThemeData(
        textTheme:Theme.of(context)
        .textTheme.apply(bodyColor: Colors.white,displayColor: Colors.white),
      )
      ,
    home:  Scaffold(
      backgroundColor: Colors.black,
      body:Column(
        children:<Widget> [
          topsection,
          middlesection,
          Container(
            height: 80.0,
            
            child:bottomsection
          ),


        ],
      )
      
    ));
  }
}


