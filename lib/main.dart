import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'flutter_internet_connection_checker/flutter_internet_connection_checker.dart';
import 'flutter_loading/flutter loading.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MultiScroll();
  }
}

class MultiScroll extends StatefulWidget {
  const MultiScroll({super.key});

  @override
  State<MultiScroll> createState() => _MultiScrollState();
}

class _MultiScrollState extends State<MultiScroll> {
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: InternetConnectionCheck(),
    );
  }
}
