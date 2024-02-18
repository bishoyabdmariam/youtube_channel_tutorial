import 'dart:io';

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

  Future<bool> _hasInternetConnection() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty && result[0].address != "192.168.1.1") {
        print(result[0].address);
        return true; // Internet is accessible
      } else {
        //[InternetAddress('192.168.1.1', IPv4)]
        print("ELSE");
        return false; // Internet is not accessible
      }
    } on SocketException catch (_) {
      print("Socket Exception");
      return false; // Internet is not accessible
    }
  }



  Future<void> checkStatus() async {
    InternetConnectionChecker().onStatusChange.listen((status) async {
      switch (status) {
        case InternetConnectionStatus.connected:
          break;
        case InternetConnectionStatus.disconnected:
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    _hasInternetConnection();
    checkStatus();
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
