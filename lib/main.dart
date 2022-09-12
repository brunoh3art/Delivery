import 'package:delivery/screens/screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Delivery',
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      initialRoute: '/',
      theme: ThemeData(primarySwatch: Colors.orange, fontFamily: "Inter"),
      routes: {
        '/': (context) => const Welcome(),
        '/home': (context) => const HomeScreen(),
        '/login': (context) => const SignIn()
      },
    );
  }
}
