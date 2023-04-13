import 'package:flutter/material.dart';
import 'screens/about.dart';
import 'screens/contact.dart';
import 'screens/hello.dart';

import 'BurcDetay.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/hello': (context) => const HelloScreen(),
        '/contact': (context) => const ContactScreen(),
        '/about': (context) => const AboutScreen()
      },
      debugShowCheckedModeBanner: false,
      title: 'Burçlar',
      theme: ThemeData(
        fontFamily: 'Roboto',
        primarySwatch: Colors.blue,
      ),
      home: BurclarAnasayfa(),
    );
  }
}

class BurclarAnasayfa extends StatelessWidget {
  final List<String> burclar = [
    "Koç",
    "Boğa",
    "İkizler",
    "Yengeç",
    "Aslan",
    "Başak",
    "Terazi",
    "Akrep",
    "Yay",
    "Oğlak",
    "Kova",
    "Balık",
  ];

  final List<String> burcdetaylari = [
    'Koç burcu açık ve net tavırları, cesareti ve liderlik özellikleriyle tanınır.',
    'Boğa burcu sabit ve kararlı bir yapıya sahip olup, güvenilirlikleriyle bilinirler.',
    'İkizler burcu meraklı ve hareketli bir yapıya sahiptirler ve çok yönlüdürler.',
    'Yengeç burcu duygusal ve koruyucu bir yapıya sahiptirler, aileleri ve sevdikleri için her şeyi yapabilirler.',
    'Aslan burcu, özgüvenli ve cömert bir yapıya sahip olup, liderlik yetenekleriyle tanınır.',
    'Başak burcu analitik ve titiz bir yapıya sahiptirler, ayrıntılara önem verirler ve düzenlidirler.',
    'Terazi burcu uyumlu ve adil bir yapıya sahiptirler, karar vermekte zorlanırlar ve güzelliği severler.',
    'Akrep burcu kararlı ve tutkulu bir yapıya sahip olup, inatçı ve güçlüdürler.',
    'Yay burcu maceraperest ve özgürlüğüne düşkün bir yapıya sahip olup, iyimser ve cesaretlidirler.',
    'Oğlak burcu kararlı ve disiplinli bir yapıya sahip olup, sabırlı ve hırslıdırlar.',
    'Kova burcu özgür ruhlu ve yaratıcı bir yapıya sahip olup, bağımsızlığına düşkündür.',
    'Balık burcu duygusal ve hayalperest bir yapıya sahip olup, sezgisel ve anlayışlıdırlar.',
  ];
  final List<String> burctarihleri = [
    '21 Mart - 20 Nisan',
    '21 Nisan - 21 Mayıs',
    '22 Mayıs - 22 Haziran',
    '23 Haziran - 22 Temmuz',
    '23 Temmuz - 22 Ağustos',
    '23 Ağustos - 22 Eylül',
    '23 Eylül - 22 Ekim',
    '23 Ekim - 21 Kasım',
    '22 Kasım - 21 Aralık',
    '22 Aralık - 21 Ocak',
    '22 Ocak - 19 Şubat',
    '20 Şubat - 20 Mart',
  ];
  final List<String> burcfotolari = [
    'assets/resimler/Koc.png',
    'assets/resimler/Boga.png',
    'assets/resimler/Ikizler.png',
    'assets/resimler/Yengec.png',
    'assets/resimler/Aslann.png',
    'assets/resimler/Basak.png',
    'assets/resimler/Terazi.png',
    'assets/resimler/Akrep.png',
    'assets/resimler/Yay.png',
    'assets/resimler/Oglak.png',
    'assets/resimler/Kova.png',
    'assets/resimler/Balık.png',
  ];
  var selectedItem = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 27,
            fontFamily: 'Kalam',
            ),
        actions: [
          PopupMenuButton(onSelected: (value) {
            // your logic

            print(value);
            Navigator.pushNamed(context, value.toString());
          }, itemBuilder: (BuildContext bc) {
            return const [
              PopupMenuItem(
                child: Text(
                  "Profil",
                  style: TextStyle(
                    fontFamily: 'Kalam',
                  ),
                ),
                value: '/hello',
              ),
              PopupMenuItem(
                child: Text("Hakkımda"),
                value: '/about',
              ),
              PopupMenuItem(
                child: Text("Sosyal Medyalarımız"),
                value: '/contact',
              )
            ];
          })
        ],
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),
        elevation: 10,
        backgroundColor: Colors.red,
        title: Text(
          'Burçlar',
          style: TextStyle(fontFamily: 'Kaman'),
        ),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: burclar.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Burc(
                      burcAdi: burclar[index],
                      burcDetay: burcdetaylari[index],
                      burcTarihi: burctarihleri[index],
                      burcFoto: burcfotolari[index]),
                ),
              );
            },
            child: Card(
              margin: EdgeInsets.all(10.0),
              child: Center(
                  child: Text(
                burclar[index],
                style: TextStyle(fontSize: 20.0),
              )),
            ),
          );
        },
      ),
    );
  }
}
