import 'package:flutter/material.dart';
import 'package:flutter_tutorial/home_controller.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final HomeController dropdownController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('localizations_demo'.tr),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Obx(() => DropdownButton<String>(
              value: dropdownController.selectedValue.value,
              items: dropdownController.items.map((item) => DropdownMenuItem<String>(
                value: item['key'],
                child: Text(item['value'] ?? ''),
              )).toList(),
              onChanged: (value) {
                if (value != null) dropdownController.setSelected(value);
              },
            )),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('content_text'.tr,),
            ),
          ],
        ),
      ),
    );
  }
}

