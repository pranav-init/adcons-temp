import 'package:flutter/material.dart';
import 'constants.dart';

void main() => runApp(DescriptionPage());

class DescriptionPage extends StatefulWidget {
  @override
  DescriptionPageState createState() => new DescriptionPageState();
}

class DescriptionPageState extends State<DescriptionPage> {
  Widget build(BuildContext c) {
    return new MaterialApp(
        home: new Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: kCategoryPageColor,
        onPressed: () {
          Navigator.push(
              c, MaterialPageRoute(builder: (context) => DescriptionPage()));
        },
        /* change this function definition to a function that navigates to the next page ( menu page with TV, Instagram, etc. )*/
        tooltip: 'Next',
        child: new Icon(Icons.arrow_right),
      ),
      appBar: AppBar(
        backgroundColor: kCategoryPageColor,
        brightness: Brightness.light,
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black87,
            ),
            onPressed: () => {}),
        /*change the above function definition for the BACK functionality*/
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: kCategoryPageColor,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(30))),
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Enter the name of the product/service you'd like to advertise.",
                    style: TextStyle(color: Colors.black87, fontSize: 25),
                  ),
                  SizedBox(height: 80),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(25),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(244, 243, 243, 1),
                  borderRadius: BorderRadius.circular(15)),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enter your product's name here",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
