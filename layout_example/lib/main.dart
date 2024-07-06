import 'package:flutter/material.dart';

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
    );
  }
}
