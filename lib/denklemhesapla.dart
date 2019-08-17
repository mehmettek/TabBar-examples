import 'package:flutter/material.dart';
import 'dart:math';

class Denklem extends StatefulWidget {
  @override
  _DenklemState createState() => _DenklemState();
}

class _DenklemState extends State<Denklem> {
  double _sonuc = 0, s1 = 0, s2 = 0, s3 = 0, kok1 = 0, kok2 = 0, x = 0;
  String text = "";
  TextEditingController a = new TextEditingController();
  TextEditingController b = new TextEditingController();
  TextEditingController c = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
      child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(hintText: 'A Değerini Giriniz'),
            onSubmitted: (String metin) {
              setState(() {
                   if(a.text.isEmpty)
                  s1=0;
                  else
                  s1 = double.parse(a.text);
                
              });
            },
            controller: a,
          ),
          SizedBox(
            height: 30.0,
          ),
          TextField(
            decoration: InputDecoration(hintText: 'B Değerini Giriniz'),
            onSubmitted: (String metin) {
              setState(() {
                   if(b.text.isEmpty)
                  s2=0;
                  else
                 s2 = double.parse(b.text);
          
              });
            },
            controller: b,
          ),
          SizedBox(
            height: 30.0,
          ),
          TextField(
            decoration: InputDecoration(hintText: 'C Değerini Giriniz'),
            onSubmitted: (String metin) {
              setState(() {
                if(c.text.isEmpty)
                  s3=0;
                  else
                s3 = double.parse(c.text);
                 
              });
            },
            controller: c,
          ),
          SizedBox(
            height: 20.0,
          ),
          RaisedButton(
            color: Colors.green,
            child: new Text("Hesapla"),
            onPressed: () => _hesapla(),
            textColor: Colors.white,
          ),
          SizedBox(
            height: 40.0,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 25.0),
          ),
        ],
      ),
    ),
    );
    
  }

  _hesapla() {
    debugPrint(s1.toString() + " "+ s2.toString()+ " "+s3.toString() );
    double disk = (s2 * s2) - (4 * s1 * s3);
    if (disk > 0) {
      kok1 = ((-s2 - sqrt(disk)) / (2 * s1));
      kok2 = ((-s2 + sqrt(disk)) / (2 * s1));
      text = """Denklemin İKi Kökü Vardır\n
      1- ${kok1.toString()} \n
      2- ${kok2.toString()} \n """;
    } else if (disk == 0) { // be kare - 4 a c  16-422
      x = -s2 / (2 * s1);
      text = """Denklemin Tek kökü Vardır\n
        ${x.toString()}""";
    } else
      text = "Sanal Kök Vardır";

/* s1=0;
s2=0;
s3=0; */
    setState(() {});
  }
}
