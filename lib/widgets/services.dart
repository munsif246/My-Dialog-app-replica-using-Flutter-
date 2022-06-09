import 'package:flutter/material.dart';
import 'Services_list.dart';
import 'para.dart';
import 'sms.dart';
import 'money.dart';

String category = "data";
String showvoice = "data";

class service_bar extends StatefulWidget {
  service_bar({Key? key}) : super(key: key);

  @override
  State<service_bar> createState() => _service_barState();
}

class _service_barState extends State<service_bar> {
  showwidget() {
    var ser;
    if (category == "data") {
      ser = categorylist();
    } else if (category == "voice") {
      ser = voicelist();
    } else if (category == "sms") {
      ser = sms();
    } else {
      ser = money2();
    }
    return ser;
  }

  void changeData() {
    setState(() {
      category = "data";
    });
  }

  void changevoice() {
    setState(() {
      category = "voice";
    });
  }

  void changesms() {
    setState(() {
      category = "sms";
    });
  }

  void changemoney() {
    setState(() {
      category = "money";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(9.0),
      child: Container(
        //height: 300.0,
        color: Color.fromARGB(255, 255, 255, 255),
        child: Column(
          children: [
            Row(
              children: [
                Spacer(),
                TextButton(
                  onPressed: changeData,
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  child: const Text('DATA'),
                ),
                Spacer(),
                TextButton(
                  onPressed: changevoice,
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  child: const Text('VOICE'),
                ),
                Spacer(),
                TextButton(
                  onPressed: changesms,
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  child: const Text('SMS'),
                ),
                Spacer(),
                TextButton(
                  onPressed: changemoney,
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  child: const Text('MONEY'),
                ),
                Spacer(),
              ],
            ),
            Container(child: showwidget())
          ],
        ),
      ),
    );
  }
}
