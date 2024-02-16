import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'generate_text_gemini.dart';


class MultiScrollWidget extends StatelessWidget {
  const MultiScrollWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
