import 'package:chat_me/pages/main_page.dart';
import 'package:chat_me/style/colors.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    title: "ChatMe",
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    theme: ThemeData(
      primaryColor: colorPrimary,
      accentColor: colorAccent
    ),
  )
);
