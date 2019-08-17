import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  int sayac = 0;
  void _sayiarti() {
    setState(() {
      sayac++;
    });  
  }

  void _sayiazalt() {
    setState(() {
      sayac--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: new Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Buraya Tıklayabilirsiniz"),
            FlatButton(
              color: Colors.green,
              textColor: Colors.white,
              splashColor: Colors.blue,
              child: new Text(
                "Arttır",
              ),
              onPressed: () => _sayiarti(),
            ),
            Text(
              '$sayac',
              style: Theme.of(context).textTheme.display1,
            ),
            SizedBox(
              height: 30.0,
            ),
            FlatButton(
              textColor: Colors.white,
              color: Colors.red,
              splashColor: Colors.cyan,
              child: new Text(
                "Azalt",
              ),
              onPressed: () => _sayiazalt(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Reset',
        child: Icon(Icons.refresh),
        onPressed: _resetle,
      ),
    );
  }

  void _resetle() {
    setState(() {
      sayac = 0;
    });
  }
}