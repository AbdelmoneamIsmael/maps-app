import 'package:flutter/material.dart';
import 'package:maps_course/module/home_page.dart';

void main() {
  runApp(const RouteTrakerApp());
}

class RouteTrakerApp extends StatelessWidget {
  const RouteTrakerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
