import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:newproject/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyDqs1Vz5eOUliJQPd7knH1Lwevay3eZ_R0",
      appId: "1:194085522422:android:ce4cc804165c836d9c15d7",
      messagingSenderId: "194085522422",
      projectId: "first-login-45e68",
    ),
  )
      : await Firebase.initializeApp();

  runApp(const HomeApp());
}

class HomeApp extends StatelessWidget {
  const HomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Futsal App',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  final List<Widget> _navigationItems = [

      Icon(Iconsax.play),
      Icon(Iconsax.shopping_cart),          // Replaced with a valid icon


     // Replaced with a valid icon
  ];
Color bgColor = Colors.black12;



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        color: bgColor,
        ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: bgColor,
        items: _navigationItems,
        height: 60,
        index: 2,
        animationDuration: const Duration(milliseconds: 300),
        onTap: (index) {
          if (index == 0) {
            bgColor = Colors.black12;
          } else if (index == 1) {
            bgColor = Colors.black26;
          } else if (index == 2) {
            bgColor = Colors.black12;
          } else if (index == 3) {
            bgColor = Colors.black26;
          }else if (index == 3) {
            bgColor = Colors.black26;
          }
          setState(() {});


        },
    ),
    );
  }
}
