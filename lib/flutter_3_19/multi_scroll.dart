import 'package:flutter/material.dart';

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
          itemCount: 2030,
          itemBuilder: (context, index) {
            return Container(
              color: Colors.greenAccent,
              child: ListTile(
                title: Center(
                  child: Text(
                    index.toString(),
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
