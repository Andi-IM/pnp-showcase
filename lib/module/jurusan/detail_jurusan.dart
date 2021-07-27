import 'package:flutter/material.dart';
import 'package:pnp_showcase/model/jurusan.dart';
import 'package:pnp_showcase/module/jurusan/detail_prodi.dart';

class DetailJurusan extends StatelessWidget {
  final Jurusan jurusan;

  DetailJurusan({@required this.jurusan});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Stack(
                alignment: Alignment.bottomLeft,
                children: <Widget>[
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
                  Ink.image(
                    height: 200,
                    image: NetworkImage(jurusan.imageUrl),
                    fit: BoxFit.fitWidth,
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: CircleAvatar(
                        backgroundColor: Colors.deepOrange[400],
                        child: IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            }),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: CircleAvatar(
                        backgroundColor: Colors.deepOrange[400],
                        child: FavoriteButton(),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 16.0, left: 8, right: 8),
                child: Text(
                  jurusan.deskripsi,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 14.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8, top: 10),
                child: Text(
                  'Program Studi',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
              ),
              Divider(),
              CustomScrollView(
                shrinkWrap: true,
                slivers: <Widget>[
                  SliverPadding(
                    padding: const EdgeInsets.all(8),
                    sliver: SliverList(
                      delegate: SliverChildListDelegate(
                        jurusan.prodi
                            .map((item) => buildCard(item, context))
                            .toList(),
                      ),
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

  Widget buildCard(Prodi prodi, context) {
    return Card(
      margin: EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 4),
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: ListTile(
          title: Text(
            prodi.namaProdi,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          leading: IconTheme(
            data: IconThemeData(size: 32),
            child: ClipOval(
              child: Image.asset(prodi.badge, width: 48),
            ),
          ),
          dense: true,
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailProdi(prodi: prodi))),
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_outline,
        color: Colors.white,
      ),
      onPressed: () => setState(() {
        isFavorite = !isFavorite;
      }),
    );
  }
}
