
import 'package:flutter/material.dart';

class Status {
  ImageProvider image;
  String name;
  Status({this.image, this.name});
}

class Message {
  ImageProvider image;
  String name;
  String message;
  int newMsg;

  Message({this.image, this.name, this.message, this.newMsg = 0});
}

final statusDataSet = [
  Status(image: AssetImage('assets/img/test1.jpg'), name: "Neha",),
  Status(image: AssetImage('assets/img/test2.jpg'), name: "Priya"),
  Status(image: AssetImage('assets/img/test3.jpg'), name: "Anishka"),
  Status(image: AssetImage('assets/img/test4.jpg'), name: "Shraddha"),
  Status(image: AssetImage('assets/img/test5.jpg'), name: "Anikesh"),
  Status(image: AssetImage('assets/img/test6.jpg'), name: "Ritesh"),
  Status(image: AssetImage('assets/img/test7.jpg'), name: "Gaurav"),
  Status(image: AssetImage('assets/img/test8.jpg'), name: "Arpit"),
];

final msgDataSet = [
  Message(image: AssetImage('assets/img/test1.jpg'), name: "Neha",newMsg: 2, message: "HI hello hwo are you"),
  Message(image: AssetImage('assets/img/test2.jpg'), name: "Priya", message: "hellow hey bro whatsapp , HI hello hwo are you,"),
  Message(image: AssetImage('assets/img/test3.jpg'), name: "Anishka", newMsg: 3, message: "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum"),
  Message(image: AssetImage('assets/img/test4.jpg'), name: "Shraddha", message: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32"),
  Message(image: AssetImage('assets/img/test5.jpg'), name: "Anikesh", message: "The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from de Finibus Bonorum et Malorum   by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackha"),
  Message(image: AssetImage('assets/img/test6.jpg'), name: "Ritesh", message: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English."),
  Message(image: AssetImage('assets/img/test7.jpg'), name: "Gaurav", message: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from"),
  Message(image: AssetImage('assets/img/test8.jpg'), name: "Arpit", message: "It is a long established fact that a reader will be distracted by the readable content "),
];