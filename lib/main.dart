import 'package:buyer_app/UserInterface/LoginRegister/buyer_change_password.dart';
import 'package:buyer_app/UserInterface/LoginRegister/buyer_forgotpassword.dart';
import 'package:buyer_app/UserInterface/LoginRegister/buyer_login.dart';
import 'package:buyer_app/UserInterface/LoginRegister/buyer_otp.dart';
import 'package:buyer_app/UserInterface/LoginRegister/buyer_otp_code.dart';
import 'package:buyer_app/UserInterface/dashboard_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  BuyerLogin(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
