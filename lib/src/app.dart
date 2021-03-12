//import 'package:app_contadora/src/pages/home_page.dart';
import 'package:app_contadora/src/pages/contador_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        //child: HomePage(),
        child: ContadorPage(),
      ),
      theme: ThemeData(
          appBarTheme: AppBarTheme(
        color: Color(0xFF69F0AE),
      )),
    );
  }
}
