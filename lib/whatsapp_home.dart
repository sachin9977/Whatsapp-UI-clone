import 'package:flutter/material.dart';
import 'package:whatsapp2/pages/calls.dart';
import 'package:whatsapp2/pages/chat.dart';
import 'package:whatsapp2/pages/status.dart';

class WhatsAppHome extends StatefulWidget {
  WhatsAppHome();


  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  late TabController _tabcontroller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabcontroller = TabController(vsync: this, initialIndex: 1, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0.7,
        title: Text(
          'WhatsApp',
        ),
        bottom: TabBar(
          controller: _tabcontroller,
          indicatorColor: Colors.white,
          tabs: [
            Icon(Icons.camera_alt),
            Text('CHATS'),
            Text('STATUS'),
            Text('CALLS'),
          ],
        ),
        actions: [
          Icon(Icons.search,),
          SizedBox(width: 20.0,),
          Icon(Icons.more_vert_sharp),],
      ),
      body: TabBarView(
        controller: _tabcontroller,
        children: [
          Chats(),
          Chats(),
          Status(),
          Calls(),
        ],),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.chat),
        onPressed: (){

        },
      ),
    );
  }
}
