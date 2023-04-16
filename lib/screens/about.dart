import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Hakkımda"),
      ),
      body: const Center(
        child: Text("Bu uygulama barinthus tarafından yapılmıştır"),
      ),
    );
  }
}