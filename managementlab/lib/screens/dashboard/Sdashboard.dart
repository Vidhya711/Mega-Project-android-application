import 'package:flutter/material.dart';
import 'package:managementlab/screens/ldashboard/Lablist.dart';
import 'package:managementlab/screens/message/SendMessage.dart';


class SDashboard extends StatefulWidget {
  @override
  _SLDashboardState createState() => _SLDashboardState();
}


class _SLDashboardState extends State<SDashboard> {
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
          crossAxisCount: 1,
          padding: EdgeInsets.all(3.0),
          children: <Widget>[
            makeDashboardItem("Labs", Icons.auto_stories,0),

            makeDashboardItem("Links", Icons.add_link,1)
          ],
        ),
      ),
    );
  }

  Card makeDashboardItem(String title, IconData icon,int position) {
    return Card(
        elevation: 1.0,
        margin: new EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(220, 220, 220, 1.0)),
          child: new InkWell(
            onTap: ()=>{
              if(position==0)
                Navigator.push(context, MaterialPageRoute(builder: (context) => LDashboard()))
              else
                if(position==1)
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SendMessage()))

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