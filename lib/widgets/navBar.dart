import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const color = Color(0xFF264653);

var navText = GoogleFonts.raleway(
  fontSize: 16.0,
  fontWeight: FontWeight.w500,
);

var navBigText = GoogleFonts.raleway(
  fontSize: 25.0,
  fontWeight: FontWeight.w800,
  color: Colors.white,
);

class NavDrawer extends StatefulWidget {
  @override
  _NavDrawerState createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: new ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            // arrowColor: Colors.orange,
            accountEmail: new Text("paulkolawole@gmail.com"),
            accountName: new Text("Kolawole Paul"),
            currentAccountPicture: new CircleAvatar(
              backgroundColor: Color(0xFF2C7884),
              child: new Text(
                "KP",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: new ListTile(
              title: new Text("Home"),
              leading: new Icon(
                Icons.home,
                size: 22,
                color: Colors.black54,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: new ListTile(
              title: new Text("Phrasebook"),
              leading: new Icon(
                Icons.bookmark,
                size: 22,
                color: Colors.black54,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: new ListTile(
                title: new Text("Offline translation"),
                leading: new Icon(
                  Icons.offline_pin,
                  size: 22,
                  color: Colors.black54,
                )),
          ),
          new Divider(
            color: Colors.black54,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: new ListTile(
              title: new Text("Settings"),
              leading: new Icon(
                Icons.settings,
                size: 22,
                color: Colors.black54,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: new ListTile(
              title: new Text("Help & feedback"),
              leading: new Icon(
                Icons.help,
                size: 22,
                color: Colors.black54,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
