import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contact Us")),
      body: Container(
        child: Column(
          children: [
            Text("Contact Us Screen"),
            Text("Tel. 064-895-7188"),
            Text("https://www.facebook.com/FenickungxLeonZa"),
          ],
        ),
      ),
    );
  }
}
