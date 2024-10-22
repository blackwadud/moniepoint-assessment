import 'dart:async';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moniepoint/view/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 1), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return const RealEstateHomePage();
      }));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.0, 0.5, 1.0],
            colors: [
              Color.fromARGB(255, 255, 248, 244),
              Color.fromARGB(255, 250, 242, 232),
              Color.fromARGB(255, 235, 185, 106),
            ],
          ),
        ),
        child: Center(
          child: Bounce(
            child: Text(
              style: GoogleFonts.majorMonoDisplay(
                fontSize: 35,
              ),
              "MONIEPOINT",
            ),
          ),
        ),
      ),
    );
  }
}
