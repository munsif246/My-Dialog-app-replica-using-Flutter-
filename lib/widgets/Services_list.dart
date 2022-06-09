import 'package:flutter/material.dart';
import 'services.dart';

class categorylist extends StatefulWidget {
  categorylist({Key? key}) : super(key: key);

  @override
  State<categorylist> createState() => _categorylistState();
}

class _categorylistState extends State<categorylist> {
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
                name: "Anytime",
                Data: "3.4 GB",
              ),
              contain_cat(
                name: "Night time",
                Data: "4.1 GB",
              ),
            ],
          ),
          Row(
            children: [
              contain_cat(
                name: "Day time",
                Data: "2.7 GB",
              ),
              contain_cat(
                name: "Facebook",
                Data: "6 GB",
              ),
            ],
          )
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
