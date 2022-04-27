import 'package:bookingapp/Screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:bookingapp/Screens/RegistrationScreen.dart';
import 'package:bookingapp/Screens/mainscreen.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zebook - Booking App',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}
