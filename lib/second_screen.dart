import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {

  String imgUrl;
  String name;
  SecondScreen({Key? key, required this.imgUrl, required this.name}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(name),
      ),
      body:  Center(
        child: Image.asset(imgUrl),
      ),
    );
  }
}
