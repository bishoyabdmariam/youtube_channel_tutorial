import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'notification.dart';

class InternetConnectionCheck extends StatefulWidget {
  const InternetConnectionCheck({super.key});

  @override
  State<InternetConnectionCheck> createState() =>
      _InternetConnectionCheckState();
}

class _InternetConnectionCheckState extends State<InternetConnectionCheck> {
  bool hasConnection = false;

  @override
  Widget build(BuildContext context) {
    Future<void> checkInternetConnection() async {
      if (await InternetConnectionChecker.createInstance().hasConnection) {
        setState(() {
          hasConnection = true;
        });
        NotificationSnackBar.doneSnackBar(text: "Internet Connection Stable");
      } else {
        setState(() {
          hasConnection = false;
        });
        NotificationSnackBar.failedSnackBar(text: "No Internet Connection");
      }
    }

    return Scaffold(
      backgroundColor: hasConnection ? Colors.cyan : Colors.green,
      appBar: AppBar(
        title: const Text("Internet Connection Checker"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: checkInternetConnection,
          child: const Text("Check Connection"),
        ),
      ),
    );
  }
}
