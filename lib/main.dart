import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/auth/login_page.dart';
import 'package:shop_app/models/homeshop.dart';
import 'package:shop_app/pages/about_page.dart';
import 'package:shop_app/pages/bottomnav_page.dart';
import 'package:shop_app/pages/cart_pages.dart';
import 'package:shop_app/pages/home_page.dart';
import 'package:shop_app/pages/intro_page.dart';
import 'package:shop_app/themes/light_mode.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context)=>Shop(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginPage(),
        theme: lightMode,
        routes: {
          '/intro_page':(context)=>const Intro_Page(),
          '/home_page':(context)=>const Home_Page(),
          '/cart_page':(context)=> Cart_Page(),
          '/about_page':(context)=>About_page(),
          '/bottomnav_page':(context)=>BottomNav_Page(),
          '/login_page':(context)=>LoginPage(),
        },
      ),
    );
  }
}
