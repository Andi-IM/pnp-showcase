import 'package:flutter/material.dart';
import 'package:pnp_showcase/model/jurusan.dart';
import 'package:pnp_showcase/widget/Drawer.dart';
import 'package:pnp_showcase/module/jurusan/detail_jurusan.dart';

class JurusanPage extends StatelessWidget {
  static const String routeName = '/jurusan';
  final _drawerScaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerScaffoldKey,
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text('Daftar Jurusan'),
      ),
      body: ListView.builder(
        itemCount: daftarJurusan.length,
        itemBuilder: (context, index) {
          final Jurusan jurusan = daftarJurusan[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => DetailJurusan(jurusan: jurusan)));
            },
            child: buildCard(jurusan.nama, jurusan.imageUrl, jurusan.deskripsi),
          );
        },
      ),
    );
  }

  Widget buildCard(String jurusan, String imageUrl, String deskripsi) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 2, left: 8, right: 8, bottom: 2),
        child: Card(
          clipBehavior: Clip.antiAlias,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          elevation: 4,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      jurusan,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                  ),
                  Hero(
                    tag: jurusan,
                    child: Ink.image(
                      height: 200,
                      image: NetworkImage(imageUrl),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      deskripsi,
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
