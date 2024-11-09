import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/localization_service.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var selectedValue = "en".obs;
  List<HashMap<String, String>> items = [
    HashMap.from({"key": "en", "value": "English"}),
    HashMap.from({"key": "es", "value": "Spanish"}),
    HashMap.from({"key": "hi", "value": "Hindi"}),
    HashMap.from({"key": "zh", "value": "Chinese"}),
    HashMap.from({"key": "ar", "value": "Arabic"}),
    HashMap.from({"key": "fr", "value": "French"}),
  ];

  @override
  void onInit() {
    super.onInit();
    selectedValue.value = LocalizationService.defaultLocale.languageCode;
  }

  void setSelected(String value) {
    selectedValue.value = value;
    LocalizationService.updateLocale(value);
  }

}