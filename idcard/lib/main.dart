import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text(
          'ID CARD'
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),
      body: Padding(

        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:<Widget> [
          Center(
                      child: CircleAvatar(
              backgroundImage: AssetImage('assets/mnj.jpg'),
              radius: 100.0,
            ),
          ),
          Divider(
            height: 60.0,
            color: Colors.grey[600],
          ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height:10.0
              ),
            Text(
              'ASWIN MANOJ',
              style: TextStyle(
                color: Colors.amber,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
                height: 30.0,
            ),
            Text(
              'PROGRAM',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height:10.0
              ),
            Text(
              'BTECH',
              style: TextStyle(
                color: Colors.amber,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
                height: 30.0,
            ),
            Text(
              'BRANCH',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height:10.0
              ),
            Text(
              'CS',
              style: TextStyle(
                color: Colors.amber,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
                height: 30.0,
            ),
            Row(
              children: <Widget>[
                Icon(Icons.email,
                color: Colors.grey[400],
                ),
                SizedBox(width:10.0),
                Text(
                  'aswinmanoj999@gmail.com',
                  style: TextStyle(letterSpacing:1.0,
                  fontSize: 20.0,
                  color: Colors.grey[400],
                  ),
                ),
              ],
            ),
            SizedBox(
                height: 30.0,
            ),
           Text(
              'PHONE NO',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height:10.0
              ),
            Text(
              '9633263239',
              style: TextStyle(
                color: Colors.amber,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
                height: 30.0,
            ),



          ],
        ),
      ),
    );
    }
}