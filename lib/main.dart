import 'package:chat/chat_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

void main() async{


  runApp(MyApp());
  // Firestore.instance.collection("mensagens").document('1RxC29Np73sSy6QHIz9w').collection('arquivos').document().setData({
  //   'arqname' : 'foto.png'
  // });

 Firestore.instance.collection('mensagens').snapshots().listen((dado){
   dado.documents.forEach((d){
     print(d.data);
   });
 });

  


}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        iconTheme: IconThemeData(color: Colors.blue),
        primarySwatch: Colors.blue,
      ),
      home: ChatScreen(),
    );
  }
}