import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SecondClass(),
  ));
}

class SecondClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Second Class',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          shape: StadiumBorder(),
          shadowColor: Colors.red,
          elevation: 25,
        ),
//appp bar closing
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(20),
                height: 200,
                width: 400,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(32), color: Colors.teal),
                child: Center(
                    child: Column(
                  children: [
                    Chip(
                      elevation: 20,
                      padding: EdgeInsets.all(8),
                      backgroundColor: Colors.greenAccent[100],
                      shadowColor: Colors.black,
                      avatar: CircleAvatar(
                        backgroundImage: NetworkImage("https://pbs.twimg.com/profile_images/1304985167476523008/QNHrwL2q_400x400.jpg"), //NetwordImage
                      ), //CircleAvatar
                      label: Text(
                        'GeeksforGeeks',
                        style: TextStyle(fontSize: 20),
                      ), //Text
                    ),
                  ],
                )),
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(20),
                height: 200,
                width: 400,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(32), color: Colors.teal),
                child: Center(
                  child: Text('TSM Cargo'),
                ),
              ),
            ],
          ),
        ));
  }
}
