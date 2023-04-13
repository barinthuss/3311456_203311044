import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/burc.dart';

class Burc extends StatelessWidget {
  final String burcAdi;
  final String burcTarihi;
  final String burcDetay;
  final String burcFoto;

  Burc({required this.burcAdi, required this.burcTarihi, required this.burcDetay, required this.burcFoto});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 197, 59, 49),
        title: Text(burcAdi, style: TextStyle(fontSize: 27),),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(child: Image.asset("$burcFoto")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text(
                  "$burcAdi ",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            SizedBox(height: 20,),
            
            Text(
              "$burcTarihi",
              style: TextStyle(fontSize: 20.0, color: Colors.red, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 15), 
              child: Text(
                "$burcDetay",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
