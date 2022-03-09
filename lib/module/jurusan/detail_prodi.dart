import 'package:flutter/material.dart';
import 'package:pnp_showcase/model/jurusan.dart';

class DetailProdi extends StatelessWidget {
  final Prodi prodi;

  DetailProdi({@required this.prodi});

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
                    child: Hero(
                      tag: prodi.namaProdi,
                      child: Text(
                        prodi.namaProdi,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      ),
                    ),
                  ),
                  Ink.image(
                    height: 200,
                    image: NetworkImage(prodi.imageUrl),
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
                  prodi.deskripsi,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 14.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8, top: 10),
                child: Text(
                  'Fasilitas',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
              ),
              Divider(height: 10, indent: 2),
              Padding(
                padding: EdgeInsets.only(left: 8, right: 8, top: 4),
                child: Table(
                    children: prodi.fasilitas
                        .map((fasil) => TableRow(
                              children: [Text(fasil)],
                            ))
                        .toList()),
              ),
            ],
          ),
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
