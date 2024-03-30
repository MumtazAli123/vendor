// ignore_for_file: prefer_const_constructors , prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class MobView extends StatefulWidget {
  const MobView({super.key});

  @override
  State<MobView> createState() => _MobViewState();
}

class _MobViewState extends State<MobView> {
  final HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(
          controller.cityName.value,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Obx(() => Text(
                  '${controller.count}',
                  style: const TextStyle(fontSize: 20),
                )),
            Obx(() => Text(
                  '${controller.latitude}',
                  style: const TextStyle(fontSize: 20),
                )),
            Obx(() => Text(
                  '${controller.longitude}',
                  style: const TextStyle(fontSize: 20),
                )),
            Obx(() => Text(
                  '${controller.address}',
                  style: const TextStyle(fontSize: 20),
                )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.find<HomeController>().increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

