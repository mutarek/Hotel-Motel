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
      body: Wrap(
        spacing: 6.0,
        runSpacing: 6.0,
        children: [
          chip('Health', Color(0xFFff8a65)),
          chip('Food', Color(0xFF4fc3f7)),
          chip('Lifestyle', Color(0xFF9575cd)),
          chip('Sports', Color(0xFF4db6ac)),
          chip('Nature', Color(0xFF5cda65)),
          chip('Learn', Color(0xFFacbb65)),
        ],
      ),
    );
  }
}

Widget chip(String label, Color color) {
  return Chip(
    labelPadding: EdgeInsets.all(5.0),
    avatar: CircleAvatar(
      backgroundColor: Colors.grey.shade600,
      child: Text(label[0].toUpperCase()),
    ),
    label: Text(
      label,
      style: TextStyle(
        color: Colors.white,
      ),
    ),
    backgroundColor: color,
    elevation: 6.0,
    shadowColor: Colors.grey[60],
    padding: EdgeInsets.all(6.0),
  );
}
