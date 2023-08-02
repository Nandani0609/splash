import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreenPage(),
    );
  }
}

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5, // Duration of the splash screen
      navigateAfterSeconds:
          MainScreen(), // The screen to navigate to after the splash screen
      title: Text(
        'My App', // Your app name or logo here
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24.0,
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.blue, // Background color of the splash screen
      loaderColor: Colors.white, // Color of the loading indicator
      loadingText: Text(
        "Loading...",
        style: TextStyle(
          color: Colors.white,
          fontSize: 16.0,
        ),
      ),
      photoSize: 100.0, // Size of the logo or image on the splash screen
      image: Image.asset('assets/app_logo.png'), // Your app logo image asset
      useLoader:
          false, // Set to true if you want to use the built-in loading animation, or false if using custom image// Alignment of the loading text
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen'),
      ),
      body: Center(
        child: Text('Welcome to the Main Screen!'),
      ),
    );
  }
}
