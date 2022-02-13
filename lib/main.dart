import 'package:aerovactraining/screens/profilescreen.dart';
import 'package:flutter/material.dart';
import 'package:aerovactraining/screens/homescreen.dart';
import 'screens/loginpage.dart';
import 'screens/signuppage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.white,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xFF265C7E),
        ),
      ),
      initialRoute: 'loginpage',
      routes: {
        '/': (context) => const HomeScreen(),
        'loginpage': (context) => const LoginPage(),
        'profilepage': (context) => const ProfileScreen(),
        'signup': (context) => const SignUp(),
      },
    );
  }
}
