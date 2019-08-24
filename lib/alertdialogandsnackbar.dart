import 'package:flutter/material.dart';

class DialogWidget extends StatefulWidget {
  DialogWidget({Key key}) : super(key: key);

  _DialogWidgetState createState() => _DialogWidgetState();
}

class _DialogWidgetState extends State<DialogWidget> {
  Color bgcolor = Colors.green;
  GlobalKey<ScaffoldState> _sckey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _sckey,
      backgroundColor: bgcolor,
       floatingActionButton: new FloatingActionButton(
        onPressed:() =>
          changeColor(Colors.green),
        
      child: new Icon(Icons.refresh),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: new Text("Open Dialog"),
              onPressed: () => dialog(),
            ),
            RaisedButton(
                child: new Text("Show SnackBar"),
                onPressed: () {
                  _sckey.currentState.showSnackBar(
                    SnackBar(
                      content: Text("Here is Snackbar"),
                      duration: new Duration(seconds: 3),
                      action: new SnackBarAction(
                        label: "Kapat",
                        onPressed: (){
                        
                        },
                      )
                    ),
                    
                  );
                },),
          ],
        ),
      ),
    );
  }

  showsnack() {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text('It throws error'),
      duration: Duration(seconds: 3),
    ));
  }

  dialog() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: new Text("Simple Dialog"),
            children: <Widget>[
              FlatButton(
                child: new Text(
                  "Red",
                  style: TextStyle(fontSize: 25.0),
                ),
                onPressed: () => changeColor(Colors.red),
              ),
              Divider(),
              FlatButton(
                child: new Text(
                  "yellow",
                  style: TextStyle(fontSize: 25.0),
                ),
                onPressed: () => changeColor(Colors.yellow),
              ),
              Divider(),
              FlatButton(
                child: new Text(
                  "pink",
                  style: TextStyle(fontSize: 25.0),
                ),
                onPressed: () => changeColor(Colors.pink),
              ),
            ],
          );
        });
  }
  
  changeColor(Color color) {
    setState(() {
      bgcolor = color;
    });
  }
}
