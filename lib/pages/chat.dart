import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp2/chatmodels.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(dummyData[index].AvatarUrl),
                radius: 30.0,
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(dummyData[index].name,style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),),
                  Text(dummyData[index].time,style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),),

                ],
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(dummyData[index].messege,style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),),
              ),
            ),
          ],
        );
      }
    ));
  }
}
