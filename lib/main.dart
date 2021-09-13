import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'pages/MyHomePage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
           designSize: Size(325, 667),
      builder: () => MaterialApp(
        
        // theme: ThemeData(fontFamily: 'RobotoMono'),
          debugShowCheckedModeBanner: false,
          home: Scaffold(
              body: Stack(
            children: [
              MyHomePage(),
            ],
          ))),
    );
  }
}
