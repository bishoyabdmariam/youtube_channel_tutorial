import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class NotificationSnackBar {
  static doneSnackBar({required String text}) {
    Get.snackbar(
      "Done",
      text,
      backgroundColor: Colors.brown,
      colorText: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      duration: const Duration(seconds: 3),
      animationDuration: const Duration(milliseconds: 500),
    );
  }

  static failedSnackBar({required String text}) {
    Get.snackbar(
      "Error",
      text,
      backgroundColor: Colors.red,
      colorText: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      duration: const Duration(seconds: 3),
      animationDuration: const Duration(milliseconds: 500),
    );
  }
}
