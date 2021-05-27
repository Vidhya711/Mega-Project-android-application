import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';


class Pops extends StatefulWidget {
  @override
  _Popup createState() => _Popup();
}

class _Popup extends State<Pops> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Labs Detail"),
        backgroundColor: Colors.grey,
      ),
      body: Container(
        child: Center(
          child: RaisedButton(
            onPressed: () {
              return showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  title: Text("Operating System : Windows 10"),

                  content: Text("""
\n Ram : 4gb\n Secondary Memory : 1 Tb \n Processor : Intel Core\n Video: No \n No Audio"""),


                  actions: <Widget>[
                    FlatButton(
                      onPressed: () {
                        Navigator.of(ctx).pop();
                      },
                      child: Text("okay"),
                    ),
                  ],
                ),
              );
            },
            child: Text("Display Details"),
          ),
        ),
      ),
    );
  }
}