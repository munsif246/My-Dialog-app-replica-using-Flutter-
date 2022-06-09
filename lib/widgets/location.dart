import 'package:flutter/material.dart';

class location extends StatefulWidget {
  location({Key? key}) : super(key: key);

  @override
  State<location> createState() => _locationState();
}

class _locationState extends State<location> {
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
                  "Location Services",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0,
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
                  name: "Network Coverage",
                  colorname: Color.fromARGB(255, 219, 139, 18),
                ),
                contain_cat(
                  name: "Locate us",
                  colorname: Color.fromARGB(255, 10, 198, 245),
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
      padding: EdgeInsets.fromLTRB(20.0, 19.0, 10.0, 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.white,
        ),
        color: colorname,
      ),
      height: 104.0,
      width: 170.0,
      margin: EdgeInsets.all(4.0),
      child: InkWell(
        splashColor: Colors.yellow,
        onTap: () {},
        borderRadius: BorderRadius.circular(40.0),
        child: Column(
          children: [
            Text(
              name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 23.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            // text
          ],
        ),
      ),
    );
  }
}
