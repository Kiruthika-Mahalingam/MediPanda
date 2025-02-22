import 'package:flutter/material.dart';
import 'dart:async';
import 'package:medipanda/screens/login_signup_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    final BuildContext context = this.context;
    Timer(Duration(seconds: 2), () {
      if (mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => LoginSignupScreen()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE1E6F0), // Light shade to complement #203c8c
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('web/icons/panda.png', height: 150), // Updated path
            SizedBox(height: 20),
            Text(
              'MediPanda',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xFF203c8c), // Updated text color
              ),
            ),
          ],
        ),
      ),
    );
  }
}
