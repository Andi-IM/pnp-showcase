import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pnp_showcase/model/homepage_item.dart';
import 'package:pnp_showcase/widget/Drawer.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/home';
  final _drawerScaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerScaffoldKey,
      drawer: AppDrawer(),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            if (_drawerScaffoldKey.currentState.isDrawerOpen) {
              Navigator.pop(context);
            } else {
              _drawerScaffoldKey.currentState.openDrawer();
            }
          },
        ),
        shadowColor: Colors.deepOrange,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            CarouselSlider(
              options: CarouselOptions(
                height: 250.0,
                aspectRatio: 16 / 9,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
              ),
              items: urlFoto.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(i),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: <Widget>[
                  Row(
                    children: [
                      Flex(
                        mainAxisAlignment: MainAxisAlignment.start,
                        direction: Axis.horizontal,
                        children: [
                          Text(
                            'Selamat Datang di Aplikasi MyPNP!',
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Text(
                    kataSambutan,
                    textAlign: TextAlign.justify,
                    softWrap: true,
                  ),
                  OutlinedButton(onPressed: () => _drawerScaffoldKey.currentState.openDrawer(), child: Text('Mulai!'))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
