import 'package:flutter/material.dart';
import 'package:public_skincare_app/home/explore_page.dart';
import 'package:public_skincare_app/home/home_page.dart';
import 'package:public_skincare_app/home/main_page.dart';
import 'package:public_skincare_app/home/profile_page.dart';
import 'package:public_skincare_app/home/wishlist_page.dart';
import 'package:public_skincare_app/pages/login_page.dart';
import 'package:public_skincare_app/pages/onboarding.dart';
import 'package:public_skincare_app/pages/register_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => OnBoardingPage(),
        '/login_page' : (context) => LoginPage(),
        '/register_page' : (context) => RegisterPage(),
        '/main_page' : (context) => MainPage(),
        '/home_page' : (context) => HomePage(),
        '/explore_page' : (context) => ExplorePage(),
        '/profile_page' : (context) => ProfilePage(),
        '/wishlist_page' : (context) => WishlistPage(),
      },
    );
  }
}