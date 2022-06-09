import 'package:flutter/material.dart';

Widget app_bar() => AppBar(
      //creating  a menu bar
      title: Text(
        "My personal",
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Color.fromARGB(255, 0, 0, 0)),
      ),
      backgroundColor: Color.fromARGB(255, 253, 253, 253),
      centerTitle: false,
      //elevation: 0.0,
      leading: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 10.0,
        child: ClipOval(
          child: Image.asset(
            "assets/images/phone_icon.png",
            fit: BoxFit.fill,
            height: 30.0,
          ),
        ),
      ),
    );
