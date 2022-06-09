import 'package:flutter/material.dart';

class valueadd extends StatefulWidget {
  valueadd({Key? key}) : super(key: key);

  @override
  State<valueadd> createState() => _valueaddState();
}

class _valueaddState extends State<valueadd> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(18.0, 0.0, 10.0, 20.0),
      padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
            child: Row(
              children: [
                Text(
                  "Value Added Services",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0,
                  ),
                ),
                Spacer(),
                Text(
                  "MY SERVICES",
                  style: TextStyle(
                    color: Color.fromARGB(255, 233, 13, 13),
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                contain_cat(
                  name: "Sports",
                  colorname: Colors.blue,
                ),
                contain_cat(
                  name: "News",
                  colorname: Colors.red,
                ),
                contain_cat(
                  name: "Lifestyle",
                  colorname: Color.fromARGB(255, 161, 18, 228),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget contain_cat({
    //required IconData IconData,
    required String name,
    required Color colorname,
  }) {
    return Container(
      padding: EdgeInsets.all(0.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.white,
        ),
        color: colorname,
      ),
      height: 90.0,
      width: 170.0,
      margin: EdgeInsets.all(4.0),
      child: InkWell(
        splashColor: Colors.yellow,
        onTap: () {},
        borderRadius: BorderRadius.circular(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
