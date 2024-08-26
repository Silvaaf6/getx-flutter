import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  final bilangan = 0.obs;

  void tambahSatu() {
    if (bilangan.value >= 20) {
      Get.snackbar(
        "Warning",
        "Udah Ah Cape",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.amber,
      );
    } else {
      bilangan.value++;
    }
  }

  void kurangSatu() {
    if (bilangan.value <= 0) {
      Get.snackbar(
        "Warning","Udah Ah Cape",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.amber,
      );
    } else {
      bilangan.value--;
    }
  }

  void refresh() {
    bilangan.value = 0;
    Get.snackbar(
      "Warning", "jadian lagi ya",
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.amber,
    );
  }
}
