import 'package:chat_me/style/colors.dart';
import 'package:chat_me/ui/status_thumb_item.dart';
import 'package:flutter/material.dart';

import '../status_data.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Messages',
                style: TextStyle(
                    color: colorLight,
                    fontSize: 25,
                    letterSpacing: 3,
                    fontFamily: 'lato',
                    fontWeight: FontWeight.bold),
              ),
              Container(
                  decoration: new BoxDecoration(
                      color: colorDarkHighlight,
                      borderRadius: new BorderRadius.circular(10)),
                  padding: EdgeInsets.all(5),
                  child: Icon(
                    Icons.add,
                    color: colorLight,
                  )),
            ],
          ),
        ),
        Container(
          height: 100,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder: (context, index) {
                return StatusThumb(
                  title: statusDataSet[index].name,
                  image: statusDataSet[index].image,
                );
              }),
        )
      ],
    );
  }
}
