import 'package:flutter/material.dart';
import 'package:interior_designer/pages/login_screen.dart';
import 'package:interior_designer/resources/utiles.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: EdgeInsets.only(right: 30, bottom: 30),
        child: InkWell(
          onTap: () {
            Navigator.pushReplacement(
              context,MaterialPageRoute(builder:(_)=> LoginScreen())
            );
          },
          child: CircleAvatar(
            radius: 40,
            child: Icon(
              Icons.arrow_forward_rounded,
              color: Colors.white,
              size: 50,
            ),
            backgroundColor: AppUtiles.primaryColor,
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/splash_image.jpg'),
                    fit: BoxFit.cover)),
          ),
          Padding(
              padding: EdgeInsets.only(
                  left: 16, top: MediaQuery.of(context).size.height / 6),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome to',
                    style: TextStyle(
                        fontSize: 26,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Wood Bridge',
                    style: TextStyle(
                        fontSize: 42,
                        letterSpacing: -1,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'In most living spaces, modern \nlounge chairs are a typical sight.',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
