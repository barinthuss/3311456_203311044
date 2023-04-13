import 'package:flutter/material.dart';

class Burc {
  final String burcAdi;
  final String burcTarihi;
  final String burcDetay;
  final String burcFoto;

  Burc({required this.burcAdi, required this.burcTarihi, required this.burcDetay, required this.burcFoto});

  static List<Burc> getBurcListesi() {
    return [
      Burc(
          burcAdi: 'Koç',
          burcTarihi: '21 Mart - 20 Nisan',
          burcFoto: 'assets/resimler/burclar.png',
          burcDetay:
              'Koç burcu açık ve net tavırları, cesareti ve liderlik özellikleriyle tanınır.'),
          
      Burc(
          burcAdi: 'Boğa',
          burcTarihi: '21 Nisan - 21 Mayıs',
          burcFoto: 'assets/resimler/burclar.png',
          burcDetay:
              'Boğa burcu sabit ve kararlı bir yapıya sahip olup, güvenilirlikleriyle bilinirler.'),
      Burc(
          burcAdi: 'İkizler',
          burcTarihi: '22 Mayıs - 22 Haziran',
          burcFoto: 'assets/resimler/burclar.png',
          burcDetay:
              'İkizler burcu meraklı ve hareketli bir yapıya sahiptirler ve çok yönlüdürler.'),
      Burc(
          burcAdi: 'Yengeç',
          burcTarihi: '23 Haziran - 22 Temmuz',
          burcFoto: 'assets/resimler/burclar.png',
          burcDetay:
              'Yengeç burcu duygusal ve koruyucu bir yapıya sahiptirler, aileleri ve sevdikleri için her şeyi yapabilirler.'),
      Burc(
          burcAdi: 'Aslan',
          burcTarihi: '23 Temmuz - 22 Ağustos',
          burcFoto: 'assets/resimler/burclar.png',
          burcDetay:
              'Aslan burcu, özgüvenli ve cömert bir yapıya sahip olup, liderlik yetenekleriyle tanınır.'),
      Burc(
          burcAdi: 'Başak',
          burcTarihi: '23 Ağustos - 22 Eylül',
          burcFoto: 'assets/resimler/burclar.png',
          burcDetay:
              'Başak burcu analitik ve titiz bir yapıya sahiptirler, ayrıntılara önem verirler ve düzenlidirler.'),
      Burc(
          burcAdi: 'Terazi',
          burcTarihi: '23 Eylül - 22 Ekim',
          burcFoto: 'assets/resimler/burclar.png',
          burcDetay:
              'Terazi burcu uyumlu ve adil bir yapıya sahiptirler, karar vermekte zorlanırlar ve güzelliği severler.'),
      Burc(
          burcAdi: 'Akrep',
          burcTarihi: '23 Ekim - 21 Kasım',
          burcFoto: 'assets/resimler/burclar.png',
          burcDetay:
              'Akrep burcu kararlı ve tutkulu bir yapıya sahip olup, inatçı ve güçlüdürler.'),
      Burc(
          burcAdi: 'Yay',
          burcTarihi: '22 Kasım - 21 Aralık',
          burcFoto: 'assets/resimler/burclar.png',
          burcDetay:
              'Yay burcu maceraperest ve özgürlüğüne düşkün bir yapıya sahip olup, iyimser ve cesaretlidirler.'),
      Burc(
          burcAdi: 'Oğlak',
          burcTarihi: '22 Aralık - 21 Ocak',
          burcFoto: 'assets/resimler/burclar.png',
          burcDetay:
              'Oğlak burcu kararlı ve disiplinli bir yapıya sahip olup, sabırlı ve hırslıdırlar.'),
      Burc(
          burcAdi: 'Kova',
          burcTarihi: '22 Ocak - 19 Şubat',
          burcFoto: 'assets/resimler/burclar.png',
          burcDetay:
              'Kova burcu özgür ruhlu ve yaratıcı bir yapıya sahip olup, bağımsızlığına düşkündür.'),
      Burc(
          burcAdi: 'Balık',
          burcTarihi: '20 Şubat - 20 Mart',
          burcFoto: 'assets/resimler/burclar.png',
          burcDetay:
              'Balık burcu duygusal ve hayalperest bir yapıya sahip olup, sezgisel ve anlayışlıdırlar.'),
          
    ];
  }
}

