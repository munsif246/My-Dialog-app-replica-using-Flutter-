import 'package:flutter/material.dart';

Widget buildimage() => Padding(
      padding: EdgeInsets.all(5.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Image.asset(
              "assets/images/screen2.jpg",
              height: 280.0,
              width: 280.0,
            ),
            Image.asset(
              "assets/images/maxresdefault.jpg",
              height: 280.0,
              width: 280.0,
            ),
            Image.asset(
              "assets/images/Samsung.jpg",
              height: 280.0,
              width: 280.0,
            ),
          ],
        ),
      ),
    );
