import 'constants.dart';
import 'main_cus_navbar.dart';
import 'data_cushome.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

void main() => runApp(CusHome());

class CusHome extends StatefulWidget {
  @override
  CusHomeState createState() => CusHomeState();
}

class CusHomeState extends State<CusHome> {
  @override
  var searchFlag = false; //MAINCUSHOME01
  List<CusHomeList> lis = []; //MAINCUSHOME10

  void initState() {
    super.initState();
    lis = getCusHomeData();
  }

  Widget build(BuildContext c) {
    return MaterialApp(
      home: Scaffold(
        drawer: CusNavDrawer(),
        floatingActionButton: new FloatingActionButton(
          //MAINCUSHOME02
          onPressed: () {
            Navigator.push(
                c, MaterialPageRoute(builder: (context) => CusHome()));
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
                          image: AssetImage("assets/images/bg-cus.png"),
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
                                      //MAINCUSHOME03
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
                                                  "Check out the ads you've applied for, below.",
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
                                    //MAINCUSHOME04
                                    onPressed: () {})),
                            Padding(
                                padding: EdgeInsets.only(left: 10, right: 10),
                                child: new IconButton(
                                    icon: Icon(FontAwesomeIcons.sortAmountUp),
                                    //MAINCUSHOME04
                                    onPressed: () {})),
                            //MAINCUSHOME05
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
                        CusHomeCard and is raising a lot of errors. Trying it also will not be useful as it is 
                        raising conflicts with the custom widget CusHomeCard. */

                        for (var item in lis)
                          CusHomeCard(
                              line1: '${item.cusCompName}',
                              line2: '${item.cusCompCat}',
                              press: () {}),
                        //MAINCUSHOME06

                        /*below two are only for demos*/

                        CusHomeCard(
                            line1: "YouTube Advertisement",
                            line2: "CarryMinati",
                            press: () {}),
                        CusHomeCard(
                            line1: "TV Advertisement",
                            line2: "Republic Media Network",
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

class CusHomeCard extends StatelessWidget {
  final String line1;
  final String line2;

  final Function press;

  const CusHomeCard({Key key, this.line1, this.line2, this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      margin: EdgeInsets.only(bottom: 16),
      width: 370,
      height: 80,
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
          IconButton(
              icon: Icon(
                Icons.arrow_forward,
                size: 26,
              ),
              onPressed: press),

          /*below code is from advhome, so commented it */

          // TextButton(
          //     child: Text('ACCEPT'),
          //     onPressed: () {},
          //     style: TextButton.styleFrom(
          //         textStyle: TextStyle(
          //             fontSize: 14,
          //             fontWeight: FontWeight.bold,
          //             decorationColor: Colors.green))),
          // TextButton(
          //     child: Text('REJECT'),
          //     onPressed: () {},
          //     style: TextButton.styleFrom(
          //         textStyle: TextStyle(
          //             fontSize: 14,
          //             fontWeight: FontWeight.bold,
          //             decorationColor: Colors.red)))
        ],
      ),
    );
  }
}
