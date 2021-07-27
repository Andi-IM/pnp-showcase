import 'package:flutter/material.dart';
import 'package:pnp_showcase/model/sejarah.dart';
import 'package:pnp_showcase/widget/Drawer.dart';

class SejarahPage extends StatelessWidget {
  static const String routeName = "/sejarah";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sejarah")),
      drawer: AppDrawer(),
      body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Image.network(imageSejarah),
                  Padding(
                    padding: EdgeInsets.only(left: 8, bottom: 4),
                    child: Text(
                        'Sejarah PNP',
                      style: TextStyle(color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  sejarah,
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
      ),
    );
  }
}