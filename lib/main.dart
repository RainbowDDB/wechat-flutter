import 'package:flutter/material.dart';
import 'package:flutter_app/home/home.dart';
import 'constant.dart' show AppColor;

void main() => runApp(
      MaterialApp(
        title: "微信",
        home: Home(),
        theme: ThemeData.light().copyWith(
          primaryColor: Color(AppColor.appBarColor),
        ),
      ),
    );
