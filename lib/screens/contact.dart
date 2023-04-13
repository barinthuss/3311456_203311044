import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sosyal Medya Hesaplarımız"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Center(
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 100),
                      Container(
                        child: Center(
                          child:  Text(
                        "Twitter",
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                        ),
                      ),
                    ],
                  ),
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
                          height: 100,
                          width: 100,
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
