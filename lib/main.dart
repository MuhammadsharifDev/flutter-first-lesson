import 'dart:async';

import 'package:flutter/material.dart';

/*void main(){
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String getWords='';
  @override
  void initState(){
    Timer.periodic(const Duration(seconds:10), (timer) {
      setState(() {
        getWords = 'Flutter';
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
title:'My App',
debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar:AppBar(
          title:const Text('AppBar'),
          leading:const Icon(Icons.account_balance),
        ),
        body: Text('Please Waiting....$getWords',style:const TextStyle(fontSize:40,
        color:Colors.teal))
      )*/
//2-Masala  2-masaladagi app endi 100 dan boshlab pastga qarab sanasin.
// Faqat har 5 sekundda 1 ta ga kamaysin.


// void main(){
//   runApp(const MyApp());
// }
// class MyApp extends StatefulWidget {
//   const MyApp({super.key});
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   int count = 100;
//
//   @override
//   void initState() {
//     Timer.periodic(const Duration(seconds: 5), (timer) {
//       setState(() {
//
//         count--;
//         if(count<=0){
//           timer.cancel();
//         }
//       });
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'My App',
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//           appBar: AppBar(
//             title: const Text('AppBar'),
//             leading: const Icon(Icons.account_balance),
//           ),
//           body:  Text('Counter $count', style: const TextStyle(fontSize: 40,
//               color: Colors.teal))
//       ),
//     );
//   }
// }

//3-masala Yuqoridagi app ga shunday o’zgartirish kiritngki counter
// juft son bo’lsa text rangi qora,
// toq bo’lsa qizil bo’lsin. Bunda ternary operatorydan foydalaning.

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {
  int count=100;
  @override
  void initState(){
    Timer.periodic(const Duration(seconds:2),(timer){
      setState(() {
        count--;
        if(count<=0){
          timer.cancel();
        }
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
          appBar:AppBar(),
          body:Text('Counter: $count',style:TextStyle(fontSize:55,
              color: count % 2 == 0 ? Colors.black : Colors.red))
      ),
    );
  }
}
