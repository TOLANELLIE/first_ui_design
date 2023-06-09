import 'package:first_ui_design/views/homepage.dart';
import 'package:first_ui_design/views/login_screens.dart';
import 'package:first_ui_design/views/screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreens(),
        'ForgetPassword': (context) => const ForgotPassword(),
        'CreateNewAccount': (context) => const CreateNewAccount(),
      },
    );
  }
}
