import 'package:flutter/material.dart';
import 'Services.dart';

class voicelist extends StatefulWidget {
  voicelist({Key? key}) : super(key: key);

  @override
  State<voicelist> createState() => _voicelistState();
}

class _voicelistState extends State<voicelist> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(12.0, 0.0, 0.0, 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //service_bar(),
          Row(
            children: [
              contain_cat(
                name: "D2D",
                Data: "1000 Min",
              ),
              contain_cat(
                name: "Any network",
                Data: "200 Min",
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget contain_cat({
    //required IconData IconData,
    required String name,
    required String Data,
  }) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.white,
        ),
        color: Color.fromARGB(255, 138, 40, 108),
      ),
      height: 100.0,
      width: 170.0,
      margin: EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text(
            name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 10.0,
              //fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            Data,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "remaining",
            style: TextStyle(
              color: Colors.white,
              fontSize: 10.0,
              //fontWeight: FontWeight.bold,
            ),
          ), // text
        ],
      ),
    );
  }
}
