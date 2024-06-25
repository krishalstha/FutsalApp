import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:iconsax/iconsax.dart';
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

  runApp(const IndexApp());
}
class IndexApp extends StatelessWidget {
  const IndexApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Futsal App',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const IndexScreen(),
    );
  }
}

class IndexScreen extends StatefulWidget {
  const IndexScreen({super.key});

  @override
  State<IndexScreen> createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  final List<Widget> _navigationItems = [

    Icon(Iconsax.play),
    Icon(Iconsax.shopping_cart),          // Replaced with a valid icon
    Icon(Iconsax.home),
    Icon(Iconsax.setting),       // Correct icon name
    Icon(Iconsax.user),

    // Replaced with a valid icon
  ];
  Color bgColor = Colors.black12;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: bgColor,
      ),
      appBar: AppBar(
        backgroundColor: Colors.grey[600],
        title: const Text(
          'FutsalApp',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),

//change
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

