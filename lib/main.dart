import 'package:flutter/material.dart';
import 'package:tasbih/Screens/home_screen.dart';
import 'package:tasbih/widgets/dua_card.dart';
import '../utils/app_style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Dua(),
    );
  }
}

class Dua extends StatefulWidget {
  const Dua({Key? key}) : super(key: key);

  @override
  State<Dua> createState() => _DuaState();
}

class _DuaState extends State<Dua> {
  @override
  Widget build(BuildContext context) {
    return const HomeScreen();
  }
}
