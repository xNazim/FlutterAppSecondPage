import 'package:asd/second_screen.dart';
import 'package:flutter/material.dart';

import 'data.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "New App",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Brand New App'),
        ),
        body: Body()
          // child: ElevatedButton(
          //   onPressed: () {
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context){
          //           return const SecondScreen();
          //
          //         }));
          //
          //   }, child: Text('go to the second screen'),
          // ),
        ),
      );
  }
}

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder
      (itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context,
              MaterialPageRoute(builder: (context){
                return SecondScreen(
                  name: data[index].name,
                  imgUrl: data[index].imgUl,
                );
              }));
            },
            child: Card(
              child: Column(
              children: [
              Image.asset(data[index].imgUl),
              Text(data[index].name)
              ],
            ),
          ),);
        }
    );
  }
}

