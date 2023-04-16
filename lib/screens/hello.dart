import 'package:flutter/material.dart';

class HelloScreen extends StatelessWidget {
  const HelloScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Profil"),
      ),
      body: const Center(
        child: Text("Profil geliştirmesi ileriki günlerde hazır olacaktır"),
      ),
    );
  }
}