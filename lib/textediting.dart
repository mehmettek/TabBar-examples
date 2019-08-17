import 'package:flutter/material.dart';

class TextEditing extends StatefulWidget {
  @override
  _TextEditingState createState() => _TextEditingState();
}

class _TextEditingState extends State<TextEditing> {
  String yazi = "";
  final TextEditingController controller = TextEditingController();
 Color _color=Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
      padding: const EdgeInsets.all(10.0),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: 'Metin Giriniz'),
              onSubmitted: (String metin) {
                setState(() {
                  yazi = yazi + "\n " + metin;
                  controller.text = "";
                });
              },
              controller: controller,
            ),
            Text(yazi,style: TextStyle(color: _color,fontSize: 25.0),),
            SizedBox(height: 40.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
                FlatButton(
                  child: Text("Sarı"),
                  onPressed: (){
                  setState(() {
                   _color=Colors.yellow; 
                  });
                  },
                ),
                FlatButton(
                  textColor: Colors.pink,
                  child: Text("Pembe"),
                  onPressed: (){
                  setState(() {
                   _color=Colors.pink; 
                  });
                  },
                ),
                FlatButton(
                  textColor: Colors.green,
                  child: Text("Yeşil"),
                  onPressed: (){
                  setState(() {
                   _color=Colors.green; 
                  });
                  },
                ),
            ],
          ),
          ],
        ),
      ),
    ),
    floatingActionButton: new FloatingActionButton(
      child: Icon(Icons.refresh),
      onPressed: () {
        setState(() {
         yazi=""; 
        });
      },
    ),
    );
  
  }
}
