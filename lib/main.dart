import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:keepmoving/pageview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Keep Moving',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.indigo), // 1
        ),
        backgroundColor: Color(0xFF1C2341),

      ),
      home: AnimatedSplashScreen(
        backgroundColor: Colors.indigo,
        splash: Image(
            fit: BoxFit.cover,
            image: AssetImage(
              'image/keepmoving.png',
            )),
        duration: 3000,
        splashTransition: SplashTransition.rotationTransition,
        nextScreen: PageStarter(),
      ),
    );
  }
}
