import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pnp_showcase/module/home/home.dart';
import 'package:pnp_showcase/module/jurusan/jurusan.dart';
import 'package:pnp_showcase/module/sejarah/sejarah_pnp.dart';
import 'package:pnp_showcase/routes/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays(
      [SystemUiOverlay.bottom, SystemUiOverlay.top]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyPNP',
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        Routes.home: (context) => HomePage(),
        Routes.jurusan: (context) => JurusanPage(),
        Routes.sejarah: (context) => SejarahPage(),
      },
    );
  }
}