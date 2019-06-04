import 'package:chat_me/style/colors.dart';
import 'package:chat_me/ui/home_msg_row_item.dart';
import 'package:flutter/material.dart';

import '../status_data.dart';

class HomeMsgList extends StatefulWidget {
  @override
  _HomeMsgListState createState() => _HomeMsgListState();
}

class _HomeMsgListState extends State<HomeMsgList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
          color: colorSecondary,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          boxShadow: [
            BoxShadow(
                color: colorBlack.withOpacity(0.5),
                blurRadius: 10,
                spreadRadius: 2,
                offset: Offset(0, -10))
          ]),
      child: Column(
        children: <Widget>[
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Recent',
                  style: TextStyle(
                      fontSize: 15,
                      color: colorPrimary.withOpacity(.6),
                      letterSpacing: 1,
                      fontFamily: 'lato'),
                ),
                InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.more_vert,
                      color: colorPrimary.withOpacity(.6),
                    ))
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: ListView.builder(
                itemCount: 8, itemBuilder: (context, index) {
                  return HomeMsgTile(
                    title: msgDataSet[index].name,
                    image: msgDataSet[index].image,
                    message: msgDataSet[index].message,
                    newMsg: msgDataSet[index].newMsg,
                  );
            }),
          )
        ],
      ),
    );
  }
}
