import 'package:flutter/material.dart';
import 'main_category.dart';
import 'constants.dart';

String getCusName() {
  /*define function here using Firebase or anything necessary
  to get the name of the user*/

  //CUSNAV01
  return 'default_customer_name';
}

class CusNavDrawer extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    final name = getCusName();
    final type = 'Customer';
    final urlImage =
        'https://upload.wikimedia.org/wikipedia/commons/9/99/Sample_User_Icon.png';

    return Drawer(
      child: Material(
        color: kNavBarColor,
        child: ListView(
          children: <Widget>[
            buildHeader(
              urlImage: urlImage,
              name: name,
              type: type,
              onClicked: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => MyApp()),
              ),
            ),
            Container(
              padding: padding,
              child: Column(
                children: [
                  //CUSNAV02
                  const SizedBox(height: 24),
                  buildMenuItem(
                    text: 'Applied Advertisers',
                    icon: Icons.sensors,
                    onClicked: () => selectedItem(context, 0),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Confirmed Advertisers',
                    icon: Icons.check,
                    onClicked: () => selectedItem(context, 1),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Submitted Advertisers',
                    icon: Icons.checklist_outlined,
                    onClicked: () => selectedItem(context, 3),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Rejected Advertisers',
                    icon: Icons.sensors_off,
                    onClicked: () => selectedItem(context, 2),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Logout',
                    icon: Icons.door_back,
                    onClicked: () => selectedItem(context, 2),
                  ),
                  const SizedBox(height: 45),
                  Divider(color: Colors.white70),
                  const SizedBox(height: 12),
                  buildMenuItem(
                    text: '© Adcons, 2021',
                    icon: Icons.copyright_outlined,
                    onClicked: () => selectedItem(context, 4),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHeader({
    String urlImage,
    String name,
    String type,
    VoidCallback onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
          child: Row(
            children: [
              CircleAvatar(radius: 30, backgroundImage: NetworkImage(urlImage)),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    type,
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      );

  Widget buildMenuItem({
    String text,
    IconData icon,
    VoidCallback onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text,
          style: TextStyle(
            color: color,
            fontSize: 14,
          )),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => MyApp(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => MyApp(),
        ));
        break;
    }
  }
}
