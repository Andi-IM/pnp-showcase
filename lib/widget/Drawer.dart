import 'package:flutter/material.dart';
import 'package:pnp_showcase/main.dart';
import 'package:pnp_showcase/routes/routes.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _createHeader(),
          _createDrawerItem(
              icon: Icons.home,
              text: 'Home',
              onTap: () =>
                  Navigator.pushReplacementNamed(context, Routes.home)),
          _createDrawerItem(
              icon: Icons.collections_bookmark_sharp,
              text: 'Jurusan',
              onTap: () =>
                  Navigator.pushReplacementNamed(context, Routes.jurusan)),
          _createDrawerItem(
            icon: Icons.history,
            text: 'Sejarah',
            onTap: () =>
                Navigator.pushReplacementNamed(context, Routes.sejarah)
          ),
          _createDrawerItem(
            icon: Icons.info_outline,
            text: 'Tentang',
            onTap: () => showAboutDialog(
                context: context,
              applicationVersion: '1.0.0',
              applicationIcon: IconTheme(
                  data: IconThemeData(size: 32),
                  child: Image.asset('assets/icon/icon.png', width: 48)
              ),
              children: [
                Text(
                  'Prototype of Flutter App for Dicoding Submission',
                style: TextStyle(fontWeight: FontWeight.w300),
                ),
              ]
            )),
        ],
      ),
    );
  }

  Widget _createHeader() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage('assets/home.jpg')),
        ),
        child: Stack(children: <Widget>[
          Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text("Politeknik Negeri Padang",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500))),
        ]));
  }

  Widget _createDrawerItem(
      {IconData icon, String text, GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
