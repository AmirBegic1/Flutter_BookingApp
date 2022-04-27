import 'dart:async';
import 'package:bookingapp/Screens/RegistrationScreen.dart';
import 'package:bookingapp/Screens/RoleScreen.dart';
import 'package:bookingapp/Screens/loginScreen.dart';
import 'package:bookingapp/Screens/mainscreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MainScreen())));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(179, 206, 124, 124),
              Color.fromARGB(179, 177, 47, 47),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                SizedBox(height: 10),
                Image.asset(
                  'assets/zebook.png',
                ),
                const Text(
                  "Welcome!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Poppinsextrabold',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 29.0,
                  ),
                ),
                Text(
                  "Your booking app is loading...",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
