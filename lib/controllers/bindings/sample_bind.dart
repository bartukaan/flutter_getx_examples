import 'package:get/get.dart';

import '../sum_controller.dart';


class SampleBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SumController>(() => SumController());
  }
}