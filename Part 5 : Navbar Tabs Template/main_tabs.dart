import 'package:flutter/material.dart';
import 'constants.dart';
import 'data_tabs.dart';
import 'main_cus_navbar.dart';

void main() => runApp(TabPage());

class TabPage extends StatefulWidget {
  @override
  TabPageState createState() => new TabPageState();
}

class TabPageState extends State<TabPage> {
  List<TabList> tlis = [];

  void initState() {
    super.initState();
    tlis = getTabList();
  }

  Widget build(BuildContext c) {
    return new MaterialApp(
        home: new Scaffold(
      drawer: CusNavDrawer(),
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      // floatingActionButton: new FloatingActionButton(
      //   backgroundColor: kCategoryPageColor,
      //   onPressed: () {
      //     Navigator.push(c, MaterialPageRoute(builder: (context) => TabPage()));
      //   },
      //   tooltip: 'Next',
      //   child: new Icon(Icons.arrow_right),
      // ),
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
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: kCategoryPageColor,
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(15))),
                padding: EdgeInsets.fromLTRB(20, 0, 10, 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Confirmed Applications",
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.black87, fontSize: 22),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              SizedBox(height: 20),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: tlis.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: <Widget>[
                        Expanded(
                          child: new Padding(
                            padding: EdgeInsets.fromLTRB(10, 0.5, 10, 0.5),
                            child: new TabCard(
                                line1: tlis[index].advName,
                                line2: tlis[index].adCat,
                                press: () {}),
                          ),
                        ),
                      ],
                    );
                  }),
            ],
          ),
        ),
      ),
    ));
  }
}

class TabCard extends StatelessWidget {
  final String line1;
  final String line2;

  final Function press;

  const TabCard({Key key, this.line1, this.line2, this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      margin: EdgeInsets.only(bottom: 16),
      width: 370,
      height: 85,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
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

          /*uncomment the below code for link submission in Confirmed Applications*/

          TextButton(
              child: Text('SUBMIT DRAFT LINK'),
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
