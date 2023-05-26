import 'package:flutter/material.dart';
import 'login/insertUser.dart';
import 'login/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ButterPopCorn',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      initialRoute: '/login',
      routes: {
        '/': (context) => LoginScreen(),
        '/insert': (context) => AddedUser(),
      },
    );
  }
}
