import 'package:flutter/material.dart';
import 'dart:async';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});


  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
bool isDateFetched=false;
  @override
  void initState(){
    fetchDate();
    super.initState();
  }
  Future fetchDate()async{
    Future.delayed(const Duration(seconds:5)).then((value){
      setState(() {
        isDateFetched=true;
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title:'My App',
      debugShowCheckedModeBanner: false,
         home:Scaffold(
           appBar: AppBar(
             title:  const Text('My Appbar'),
             leading: const Icon(Icons.account_circle_outlined),
           ),
      body:isDateFetched
          ?const Text(
          'Hello Flutter',
      style:TextStyle(
          fontSize:45,
          color:Colors.green

      )
      )
          :const CircularProgressIndicator(),
           ),
         );

  }
}
