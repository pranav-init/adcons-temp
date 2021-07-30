import 'package:flutter/material.dart';
import 'constants.dart';
import 'main_cus_navbar.dart';
import 'main_category_next.dart';
import 'data_category.dart';

void main() => runApp(CategoryPage());

class CategoryPage extends StatefulWidget {
  @override
  CategoryPageState createState() => new CategoryPageState();
}

class CategoryPageState extends State<CategoryPage> {
  List<Category> categoryLis = getCategoryData();
  Widget build(BuildContext c) {
    return new MaterialApp(
        home: new Scaffold(
      drawer: CusNavDrawer(),
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: kCategoryPageColor,
        onPressed: () {
          Navigator.push(
              c, MaterialPageRoute(builder: (context) => CategoryPage()));
        },
        tooltip: 'Next',
        child: new Icon(Icons.arrow_right),
      ),
      appBar: AppBar(
        backgroundColor: kCategoryPageColor,
        brightness: Brightness.light,
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black87,
            ),
            onPressed: () => CusNavDrawer()),
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
                    "Choose your product's",
                    style: TextStyle(color: Colors.black87, fontSize: 25),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Category",
                    style: TextStyle(color: Colors.black87, fontSize: 40),
                  ),
                  SizedBox(height: 80),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: <Widget>[
                  Text(
                    "Categories",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        for (var item in categoryLis)
                          menuCard(item.imageLocation, item.imageDescription,
                              /*change function definition here*/
                                   () {
                            print('${item.imageDescription} has been clicked.');
                          }),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }

  Widget menuCard(image, text, Function press) {
    return new Stack(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 2.62 / 3,
          child: GestureDetector(
            onTap: press,
            child: Container(
              margin: EdgeInsets.only(right: 15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(image)),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    stops: [0.1, 0.9],
                    colors: [
                      Colors.black.withOpacity(.8),
                      Colors.black.withOpacity(.1)
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 17.0,
          left: 10.0,
          child: new Center(
            child: new Container(
              child: new Text(
                text,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
