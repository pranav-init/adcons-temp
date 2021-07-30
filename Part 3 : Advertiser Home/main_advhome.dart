import 'constants.dart';
import 'main_adv_navbar.dart';
import 'data_advhome.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

void main() => runApp(AdvHome());

class AdvHome extends StatefulWidget {
  @override
  AdvHomeState createState() => AdvHomeState();
}

class AdvHomeState extends State<AdvHome> {
  @override
  var searchFlag = false;
  List<AdvHomeList> lis = [];

  void initState() {
    super.initState();
    lis = getAdvHomeData();
  }

  Widget build(BuildContext c) {
    return MaterialApp(
      home: Scaffold(
        drawer: AdvNavDrawer(),
        floatingActionButton: new FloatingActionButton(
          onPressed: () {
            Navigator.push(
                c, MaterialPageRoute(builder: (context) => AdvHome()));
          },
          tooltip: 'Increment',
          child: new Icon(Icons.add),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Container(
                    height: 280,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/bg-adv.png"),
                          fit: BoxFit.fitWidth,
                        ),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50))),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 34),
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 75),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Welcome,",
                                      style: Theme.of(c)
                                          .textTheme
                                          .display1
                                          .copyWith(fontSize: 28),
                                    ),
                                    Text(
                                      "sksrivatsava!",
                                      style: Theme.of(c)
                                          .textTheme
                                          .headline4
                                          .copyWith(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 28),
                                    ),
                                    SizedBox(height: 30),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Expanded(
                                          child: Column(
                                            children: <Widget>[
                                              Text(
                                                  "Check out your ad applications below.",
                                                  style:
                                                      TextStyle(fontSize: 18)),
                                            ],
                                          ),
                                        ),
                                        // Column(
                                        //   children: <Widget>[
                                        //     IconButton(
                                        //       icon: Icon(Icons.favorite_border),
                                        //       onPressed: () {},
                                        //     ),
                                        //   ],
                                        // ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Image.asset("assets/images/homeimage.png",
                                  height: 160),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 280),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.only(left: 20, right: 10),
                                child: new IconButton(
                                    icon:
                                        Icon(FontAwesomeIcons.sortAmountUpAlt),
                                    onPressed: () {})),
                            Padding(
                                padding: EdgeInsets.only(left: 10, right: 10),
                                child: new IconButton(
                                    icon: Icon(FontAwesomeIcons.sortAmountUp),
                                    onPressed: () {})),
                            !searchFlag
                                ? Expanded(
                                    child: new Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 5, horizontal: 30),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: TextField(
                                        onChanged: (value) {
                                          setState(() {
                                            searchFlag = true;
                                          });
                                        },
                                        decoration: InputDecoration(
                                          icon: Icon(Icons.manage_search),
                                          border: InputBorder.none,
                                          hintText: "Search..",
                                          hintStyle: TextStyle(
                                              color: Colors.grey, fontSize: 20),
                                        ),
                                      ),
                                    ),
                                  )
                                : Expanded(
                                    child: new Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 5, horizontal: 30),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: TextField(
                                        onChanged: (value) {
                                          setState(() {
                                            searchFlag = true;
                                          });
                                        },
                                        decoration: InputDecoration(
                                          icon: Icon(Icons.manage_search),
                                          border: InputBorder.none,
                                          hintText: "Search..",
                                          hintStyle: TextStyle(
                                              color: Colors.grey, fontSize: 20),
                                        ),
                                      ),
                                    ),
                                  ),
                            searchFlag
                                ? Padding(
                                    padding:
                                        EdgeInsets.only(left: 10, right: 10),
                                    child: new IconButton(
                                        icon: Icon(Icons.cancel),
                                        onPressed: () {
                                          setState(() {
                                            searchFlag = false;
                                          });
                                        }))
                                : Padding(
                                    padding:
                                        EdgeInsets.only(left: 10, right: 10),
                                  ),
                          ],
                        ),

                        /* I used the below code because ListView.builder is not working with the custom widget
                        AdvHomeCard and is raising a lot of errors. Trying it also will not be useful as it is 
                        raising conflicts with the custom widget AdvHomeCard. */

                        for (var item in lis)
                          AdvHomeCard(
                              line1: '${item.cusCompName}\n${item.cusCompCat}',
                              line2: '${item.cusUserName}\n${item.price}',
                              press: () {}),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AdvHomeCard extends StatelessWidget {
  final String line1;
  final String line2;

  final Function press;

  const AdvHomeCard({Key key, this.line1, this.line2, this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      margin: EdgeInsets.only(bottom: 16),
      width: 370,
      height: 115,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(38.5),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 20),
            blurRadius: 33,
            color: Color(0xFFD3D3D3).withOpacity(.84),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: "$line1\n",
                    style: TextStyle(
                        fontSize: 15,
                        color: kBlackColor,
                        fontWeight: FontWeight.bold)),
                TextSpan(
                    text: "$line2\n",
                    style: TextStyle(color: kLightBlackColor)),
              ],
            ),
          ),
          Spacer(),
          // IconButton(
          //     icon: Icon(
          //       Icons.arrow_forward,
          //       size: 26,
          //     ),
          //     onPressed: press),

          /*above code is from cushome, so commented it */

          TextButton(
              child: Text('ACCEPT'),
              onPressed: () {},
              style: TextButton.styleFrom(
                  textStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      decorationColor: Colors.green))),
          TextButton(
              child: Text('REJECT'),
              onPressed: () {},
              style: TextButton.styleFrom(
                  textStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      decorationColor: Colors.red)))
        ],
      ),
    );
  }
}
