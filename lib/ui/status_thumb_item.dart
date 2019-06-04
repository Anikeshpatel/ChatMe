import 'package:chat_me/style/colors.dart';
import 'package:flutter/material.dart';

class StatusThumb extends StatelessWidget {
  ImageProvider image;
  String title;
  StatusThumb({@required this.image, @required this.title}){}

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CircleAvatar(
            radius: 30,
            backgroundImage: image,
          ),
          Text(title, style: TextStyle(
            color: colorSecondary.withOpacity(.8)
          ),)
        ],
      ),
    );
  }
}
