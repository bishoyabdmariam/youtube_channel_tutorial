import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'generate_text_gemini.dart';

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
    getResponseFromGemini();
    return MaterialApp(
      scrollBehavior: MyCustomScrollBehavior(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Multi Touch Scroll",
          ),
        ),
        body: ListView.builder(
            itemCount: 2000,
            itemBuilder: (context, index) {
              return Container(
                color: Colors.red,
                child: ListTile(
                  title: Text(
                    index.toString(),
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
