import 'package:flutter/material.dart';
import 'package:ukl_paket1/pages/account_screen.dart';
import 'package:ukl_paket1/pages/home_screen.dart';
import 'package:ukl_paket1/pages/splash_screen.dart';
import 'package:ukl_paket1/pages/transaksi_screen.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/splash',
    routes: {
      '/splash': (context) => SplashScreen(),
      '/home': (context) => HomeScreen(),
      '/transaksi':(context) => TransaksiScreen(),
      '/account':(context) => AccScreen(),
    },
    debugShowCheckedModeBanner: false,
  ));
}
