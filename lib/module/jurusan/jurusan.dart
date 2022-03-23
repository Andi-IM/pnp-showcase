import 'package:flutter/material.dart';
import 'package:pnp_showcase/model/jurusan.dart';
import 'package:pnp_showcase/module/jurusan/detail_jurusan.dart';
import 'package:pnp_showcase/widget/Drawer.dart';

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
          return buildCard(context, jurusan);
        },
      ),
    );
  }

  Widget buildCard(BuildContext context, Jurusan jurusan) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 2, left: 8, right: 8, bottom: 2),
        child: Card(
          clipBehavior: Clip.antiAlias,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          elevation: 4,
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailJurusan(jurusan: jurusan)));
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Hero(
                      tag: jurusan,
                      child: Material(
                        child: Ink.image(
                          height: 200,
                          image: NetworkImage(jurusan.imageUrl),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        jurusan.nama,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
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
                        jurusan.deskripsi,
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
