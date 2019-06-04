import 'package:chat_me/fragments/main_list_container.dart';
import 'package:chat_me/style/colors.dart';
import 'package:chat_me/ui/appbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: colorPrimary,
        padding: EdgeInsets.only(top: 20),
        child: Column(
          children: <Widget>[
            CustomAppBar(),
            Flexible(
              flex: 1,
              child: HomeMsgList(),
            )
          ],
        ),
      ),
    );
  }
}
