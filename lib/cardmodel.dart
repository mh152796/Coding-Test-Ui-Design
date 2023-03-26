import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardModel {
  IconData iconData;
  late String title;
  late String subTitle;

  String buttonName;

  CardModel({required this.iconData, required this.title, required this.subTitle, required this.buttonName});
}


