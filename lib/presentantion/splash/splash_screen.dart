import 'package:flutter/material.dart';
import 'package:proyecto_deliviery_app/presentantion/login/login_scren.dart';
import 'package:proyecto_deliviery_app/presentantion/theme.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => LoginScreen(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              DeliveryColors.purple,
              DeliveryColors.green,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CircleAvatar(
              radius: 45.0,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    'assets/avatar.png',
                    fit: BoxFit.cover,
                    
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Delivery App - Grego",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline4.copyWith(
                color: DeliveryColors.white,
                fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
      ),
    );
  }
}
