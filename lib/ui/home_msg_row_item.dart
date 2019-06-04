import 'package:chat_me/style/colors.dart';
import 'package:flutter/material.dart';

class HomeMsgTile extends StatefulWidget {
  ImageProvider image;
  String title;
  String message;
  int newMsg;

  HomeMsgTile(
      {@required this.image, @required this.title, @required this.message, this.newMsg});

  @override
  _HomeMsgTileState createState() => _HomeMsgTileState();
}

class _HomeMsgTileState extends State<HomeMsgTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        onTap: () {},
        leading: CircleAvatar(
          radius: 25,
          backgroundImage: widget.image,
        ),
        title: Text(
          widget.title,
          style: TextStyle(
              fontWeight: FontWeight.w900,
              fontFamily: 'lato',
              fontSize: 16,
              letterSpacing: 1,
              color: colorDark),
        ),
        subtitle: Text(
          widget.message,
          maxLines: 2,
          style: TextStyle(
              fontFamily: 'lato',
              fontSize: 15,
              color: colorBlack.withOpacity(0.6),
              wordSpacing: 3),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('5m', style: TextStyle(
                fontFamily: 'lato',
                fontSize: 12,
                color: colorBlack.withOpacity(0.6),
                wordSpacing: 3),),
            Opacity(
              opacity: widget.newMsg != 0 ? 1 : 0,
              child: Container(
                width: 30,
                height: 30,
                alignment: Alignment.center,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: colorAccent,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Text('${widget.newMsg}', style: TextStyle(
                    fontFamily: 'lato',
                    fontSize: 12,
                    color: colorLight,
                    wordSpacing: 3),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
