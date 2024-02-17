import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'flutter_3_19/multi_scroll.dart';
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

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like multitouchDragStrategy
  @override
  MultitouchDragStrategy get multitouchDragStrategy =>
      MultitouchDragStrategy.sumAllPointers;
}

class MultiScroll extends StatefulWidget {
  const MultiScroll({super.key});

  @override
  State<MultiScroll> createState() => _MultiScrollState();
}

class _MultiScrollState extends State<MultiScroll> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: MyCustomScrollBehavior(),
      home: const FlutterLoading(),
    );
  }
}
