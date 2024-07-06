import 'package:flutter/material.dart';
import 'package:flutter_app/screens/second_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        child: Text('Test Drawer'),
      ),
      appBar: AppBar(
        title: const Text('หน้าหลัก'),
      ),
      body:Column(children: [
        Row(children: [
          Column(
            children: [Icons: (Icons.call)
            container: Container(
              
            )],
          ),
          Column(children: [Icons: (Icons.near_me)
            container: Container(
              
            )],
            ),
          Column(children: [Icons: (Icons.share)
            container: Container(
              
            )],
            ),
        ],)
      ],)
    );
  }
}
