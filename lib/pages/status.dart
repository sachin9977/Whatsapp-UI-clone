import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp2/statusmodel.dart';

import '../chatmodels.dart';

class Status extends StatelessWidget {
  const Status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        toolbarHeight: 60.0,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            CircleAvatar(
            child: Icon(Icons.person,
            size: 30.0,),),
            // SizedBox(width: 20.0,),
            Column(
              children: [
                Text('My Status',
                style: TextStyle(
                  color: Colors.black,
                ),),
                Text('Tap tp update status update',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10.0
                  ),),
              ],
            ),

          ],
        ),
      ),
      body: ListView.builder(itemCount: dummyStatus.length, itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(dummyData[index].AvatarUrl),
            radius: 30.0,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(dummyStatus[index].name,style: TextStyle(
                fontWeight: FontWeight.bold,
              ),),


            ],
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(dummyStatus[index].messege,style: TextStyle(
              fontWeight: FontWeight.bold,
            ),),
          ),
        );
      },),
    );
  }
}
