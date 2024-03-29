import 'package:aplikasi_smarthome_lumihome/Autentification/Auth.dart';
import 'package:aplikasi_smarthome_lumihome/Dashboard/Dashboard.dart';
import 'package:aplikasi_smarthome_lumihome/Dashboard/Rooms/Rooms.dart';
import 'package:aplikasi_smarthome_lumihome/Splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lumi home',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      routes: {
        '/Auth': (context) => Auth(),
        '/Dashboard': (context) => DashboardPage(),
        '/room': (context) => Roomspage(),
      },
    );
  }
}
