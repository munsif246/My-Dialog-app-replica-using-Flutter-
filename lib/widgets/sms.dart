import 'package:flutter/material.dart';
import 'services.dart';

class sms extends StatefulWidget {
  sms({Key? key}) : super(key: key);

  @override
  State<sms> createState() => _smsState();
}

class _smsState extends State<sms> {
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
                Data: "252 Msgs",
              ),
              contain_cat(
                name: "Any Network",
                Data: "105 Msgs",
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
