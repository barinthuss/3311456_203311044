import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.red,
        title: Text("Sosyal Medya Hesaplarımız"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          launch('https://twitter.com/barinthuss');
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          child: Image(
                            image: AssetImage("assets/resimler/twitter.png"),
                          ),
                        ),
                      ),
                      SizedBox(width: 55),
                      InkWell(
                        onTap: () {
                          launch('https://twitter.com/barinthuss');
                        },
                        child: Container(
                          height: 97,
                          width: 97,
                          child: Image(
                            image: AssetImage("assets/resimler/Instagram.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
        ],
      ),
    );
  }
}
