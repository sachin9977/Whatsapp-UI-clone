import 'package:flutter/material.dart';
import 'package:whatsapp2/callmodel.dart';

class Calls extends StatelessWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: dummycall.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(dummycall[index].AvatarUrl),
                radius: 30.0,
              ),
              title: Text(dummycall[index].callname),
              subtitle: Text(dummycall[index].date),
              trailing: Text(dummycall[index].calltime),
            );
          }),
    );
  }
}
