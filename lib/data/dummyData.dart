import 'package:flutter/material.dart';

List friendsData = [
  "Allo",
  "Evans",
  "Percy",
  "Twumasi",
  "Paul",
  "Peter",
  "Mark",
  "Matthew",
  "Luke",
  "John"
];
String message = "Lorem Ipsum, sika no ahye...";

getCurrentDate() {
  var date = DateTime.now().toString();
  var dateParse = DateTime.parse(date);
  var formattedDate = "${dateParse.day}/${dateParse.month}/${dateParse.year}";
  String finalDate = formattedDate.toString();
  return finalDate;
}

getCurrentDayTime() {
  var date = DateTime.now().toString();
  var dateParse = DateTime.parse(date);
  var formattedDate =
      "${dateParse.weekday} ${dateParse.day}, ${dateParse.hour}:${dateParse.minute}";
  String finalDate = formattedDate.toString();
  return finalDate;
}
