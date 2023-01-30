import 'package:flutter/material.dart';

import 'layout/home_layout.dart';
import 'shared/styles/my_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie_app',
      debugShowCheckedModeBanner: false,
      initialRoute: HomeLayout.routeName,
      routes: {
        HomeLayout.routeName: (c) => HomeLayout(),
      },
      theme: MyThemeData.darkTheme,
      // darkTheme: MyThemeData.darkTheme,
    );
  }
}
