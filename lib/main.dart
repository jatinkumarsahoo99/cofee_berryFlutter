import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import 'app/data/BinderData.dart';
import 'app/routes/app_pages.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.blue, // navigation bar color
    statusBarColor: Colors.white, // status bar color
  ));

  runApp(
    GetMaterialApp(
      title: "Cofee Berry",
        debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // focusColor: Colors.deepPurple[200],
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.grey,
        fontFamily: "Roboto",
        appBarTheme: const AppBarTheme(
          toolbarHeight: 48,
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        // primaryIconTheme: const IconThemeData(color: Colors.deepPurple),
      ),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
        initialBinding: BinderData()
    ),
  );
}
