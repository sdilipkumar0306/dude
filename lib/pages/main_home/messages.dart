import 'package:flutter/material.dart';

class MessagesUI extends StatefulWidget {
  const MessagesUI({ Key? key }) : super(key: key);

  @override
  _MessagesUIState createState() => _MessagesUIState();
}

class _MessagesUIState extends State<MessagesUI> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("Messages"),),
      body: const Center(child: Text("Messages"),),
    );
  }
}