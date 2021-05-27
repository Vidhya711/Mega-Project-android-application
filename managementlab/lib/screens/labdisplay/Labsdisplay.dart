import 'package:flutter/material.dart';
import 'package:managementlab/screens/message/SendMessage.dart';
import 'package:managementlab/screens/popupwindow/Displaypopup.dart';


class LabDisplay extends StatefulWidget {
  @override
  _Labsdisplay createState() => _Labsdisplay();
}

class _Labsdisplay extends State<LabDisplay> {

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DASHBOARD"),
        elevation: .1,
        backgroundColor: Color.fromRGBO(49, 87, 110, 1.0),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 2.0),
        child: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(3.0),
          children: <Widget>[
            makeDashboardItem("1", Icons.add_to_home_screen, 0),
            makeDashboardItem("2", Icons.add_to_home_screen, 1),
            makeDashboardItem("3", Icons.add_to_home_screen, 2),
            makeDashboardItem("4", Icons.add_to_home_screen, 3),
            makeDashboardItem("5", Icons.add_to_home_screen, 4),
            makeDashboardItem("6", Icons.add_to_home_screen, 5)
          ],
        ),
      ),
    );
  }

  Card makeDashboardItem(String title, IconData icon, int position) {
    return Card(
        elevation: 1.0,
        margin: new EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(220, 220, 220, 1.0)),
          child: new InkWell(
            onTap: () =>
            {
              if(position == 0)

                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Pops()))
              else
                if(position == 1)
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Pops()))
                else
                  if(position == 2)
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Pops()))
                  else
                    if(position == 3)
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Pops()))
                    else
                      if(position == 4)
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Pops()))
                      else
                        if(position == 5)
                          Navigator.push(context,
             MaterialPageRoute(builder: (context) => SendMessage()))
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                SizedBox(height: 50.0),
                Center(
                    child: Icon(
                      icon,
                      size: 40.0,
                      color: Colors.black,
                    )),
                SizedBox(height: 20.0),
                new Center(
                  child: new Text(title,
                      style:
                      new TextStyle(fontSize: 18.0, color: Colors.black)),
                )
              ],
            ),
          ),
        ));
  }
}