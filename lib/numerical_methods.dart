import 'package:flutter/material.dart';

class NumericalMethods extends StatefulWidget {
  NumericalMethods({Key key}) : super(key: key);

  @override
  _NumericalMethodsState createState() => _NumericalMethodsState();
}

class _NumericalMethodsState extends State<NumericalMethods> {
  TextEditingController controller = new TextEditingController();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  ceil(num value){
    setState(() {
      number=value.ceil();
    });
  }
  floor(num value){
    setState(() {
      number=value.floor();
    });
  }
  num number = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Wrap(
              children: <Widget>[
                Text(number.toString()),
              ],
            ),
            SizedBox(height: 50.0),
            TextField(
              controller: controller,
              onSubmitted: (value) {
                number = num.parse(value);
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  color: Colors.purpleAccent,
                  child: new Text(
                    "CEİL",
                    style: TextStyle(fontSize: 20.0, color: Colors.black45),
                  ),
                  onPressed: () =>ceil(number),
                ),

                FlatButton(
                  color: Colors.purpleAccent,
                  child: new Text(
                    "FLOOR",
                    style: TextStyle(fontSize: 20.0, color: Colors.black45),
                  ),
                  onPressed: () =>floor(number),
                ),
                FlatButton(
                  color: Colors.purpleAccent,
                  child: new Text(
                    "CEİL",
                    style: TextStyle(fontSize: 20.0, color: Colors.black45),
                  ),
                  onPressed: () {},
                ),
                FlatButton(
                  color: Colors.purpleAccent,
                  child: new Text(
                    "CEİL",
                    style: TextStyle(fontSize: 20.0, color: Colors.black45),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
