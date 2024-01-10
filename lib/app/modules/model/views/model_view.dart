import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/model_controller.dart';

class ModelView extends GetView<ModelController> {
  const ModelView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ModelView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ModelView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
