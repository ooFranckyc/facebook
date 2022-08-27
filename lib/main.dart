import 'package:facebook/screens/home/home.dart';
import 'package:facebook/utils/appstore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// (c)copyright you, 2022 All right reserved
// write by ooFrancky, modify by you😊
// no packages state management implemented

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      statusBarColor: AppStore.colorWhite,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: AppStore.colorWhite,
      systemNavigationBarContrastEnforced: true,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemStatusBarContrastEnforced: true
    )
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Facebook',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}