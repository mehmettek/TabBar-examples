import 'dart:math';

import 'package:flutter/material.dart';

class DropDownAndImage extends StatefulWidget {
  @override
  _DropDownAndImageState createState() => _DropDownAndImageState();
}

class _DropDownAndImageState extends State<DropDownAndImage> {
  String _currentImage ="";
  var _resimler = [
    'assets/images/dog1.jpg',
    'assets/images/cat.jpg',
    'assets/images/dog.jpg',
    'assets/images/cat2.jpeg',
  ];
  
  @override
  void initState() {
    var _random=new Random();
    var random=_random.nextInt(4);
    _currentImage=_resimler[random];
    debugPrint(random.toString());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            _currentImage,
            width: 250.0,
            height: 250.0,
          ),
          SizedBox(
            height: 80.0,
          ),
          DropdownButton<String>(
            items: _resimler.map((String dropDownStringItem) {
              return DropdownMenuItem<String>(
                value: dropDownStringItem,
                child: Text(dropDownStringItem),
              );
            }).toList(),
            onChanged: (String newValueSelected) {
              setState(() {
                _currentImage = newValueSelected;
              });
            },
            value: _currentImage,
          ),
        ],
      ),
    );
  }
}
