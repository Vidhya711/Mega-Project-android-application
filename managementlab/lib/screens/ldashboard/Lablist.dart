import 'package:flutter/material.dart';
import 'package:managementlab/screens/labdisplay/Labsdisplay.dart';

class LDashboard extends StatefulWidget {
  @override
  _LDashBoardDesign createState() => _LDashBoardDesign();
}



class _LDashBoardDesign extends State<LDashboard>  {
  Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return MaterialApp(
      title: 'Labs',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text(
            "Labs",
            textAlign: TextAlign.center,
          ),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              child: CustomPaint(
                painter: ShapesPainter(),
                child: Container(
                  height: size.height / 2,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: GridView.count(
                  crossAxisCount: 2,
                  children: <Widget>[
                    createGridItem(0),
                    createGridItem(1),
                    createGridItem(2),
                    createGridItem(3),
                    createGridItem(4),
                    createGridItem(5),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget createGridItem(int position) {
    var color = Colors.white;
    //var icondata = Icons.add;
    var icondata;
    var pos=position;
    switch (position) {
      case 0:
        color = Colors.cyan;
        //icondata = Icons.map;
        // icondata = Image.asset("images/bottom1.png");
        //AssetImage("images/deleteicon.png")) as IconData;

        break;
      case 1:
        color = Colors.deepPurple;

        //icondata = Icons.add_location;
        break;
      case 2:
        color = Colors.orange[300];
        //icondata = Icons.library_books;
        break;
      case 3:
        color = Colors.pinkAccent;
        //icondata = Icons.access_time;
        break;
      case 4:
        color = Colors.teal[900];
        //icondata = Icons.add_shopping_cart;
        break;
      case 5:
        color = Colors.green[600];
        //icondata = Icons.list;
        break;
    }

    return Builder(builder: (context) {
      return Padding(
        padding:
        const EdgeInsets.only(left: 10.0, right: 10, bottom: 5, top: 5),
        child: Card(
          elevation: 10,
          color:color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            side: BorderSide(color: Colors.white),
          ),
          child: InkWell(
            onTap: () {
              Scaffold.of(context).showSnackBar(
                  SnackBar(content: Text("Selected Item $position")));

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LabDisplay()),);
            },
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(
                    icondata,
                    size: 40,
                    color: Colors.white,
                  ),
                  if(pos==0)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Basic Language",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  if(pos==1)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Android",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  if(pos==2)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Machine Learning",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  if(pos==3)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "IOT",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  if(pos==4)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Database",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  if(pos==5)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "New Technologies",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      );
      ;
    });
  }
}

class ShapesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    // set the paint color to be white
    paint.color = Colors.white;
    // Create a rectangle with size and width same as the canvas
    var rect = Rect.fromLTWH(0, 0, size.width, size.height);
    // draw the rectangle using the paint
    canvas.drawRect(rect, paint);
    paint.color = Colors.grey;
    // create a path
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, 0);
    // close the path to form a bounded shape
    path.close();
    canvas.drawPath(path, paint);
    /* // set the color property of the paint
    paint.color = Colors.deepOrange;
    // center of the canvas is (x,y) => (width/2, height/2)
    var center = Offset(size.width / 2, size.height / 2);
    // draw the circle with center having radius 75.0
    canvas.drawCircle(center, 75.0, paint);*/
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}