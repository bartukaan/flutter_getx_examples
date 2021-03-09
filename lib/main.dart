import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_examples/screens/first.dart';
import 'package:flutter_getx_examples/screens/second.dart';
import 'package:flutter_getx_examples/utils/translations/translations.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:get_storage/get_storage.dart';

import 'controllers/bindings/sample_bind.dart';

void main() async {
  await GetStorage.init();
  runApp(GetMaterialApp(
    // It is not mandatory to use named routes, but dynamic urls are interesting.
    initialRoute: '/first',
    theme: ThemeData(
      accentColor: Colors.purpleAccent,
      primaryColor: Colors.purple,
    ),
    defaultTransition: Transition.upToDown,
    translations: MyTranslations(),
    locale: Locale('en', 'US'),
    getPages: [
      //Simple GetPage
      GetPage(name: '/first', page: () => First()),
      // GetPage with custom transitions and bindings
      GetPage(
        name: '/second',
        page: () => Second(),
        binding: SampleBind(),
      ),
    ],
  ));
}