import 'package:flutter/material.dart';
import 'package:hbdforyoubby/Halaman/masuk.dart';
import 'package:hbdforyoubby/Halaman/pengenalan.dart';
import 'package:hbdforyoubby/Halaman/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Birthday Apps',
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.RoutePage.toString(),
      routes: {
        SplashScreen.RoutePage.toString(): (context) => SplashScreen(),
        Pengenalan.RoutePage.toString(): (context) => Pengenalan(),
        HalamanMasuk.RoutePage.toString(): (context) => HalamanMasuk(),
      },
    );
  }
}
