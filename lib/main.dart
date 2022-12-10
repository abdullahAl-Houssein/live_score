import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:soccerlive/FastApi/SMProvider.dart';
import 'package:soccerlive/Screens/HomeScreen.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider<SMProvider>(
        create: ((context) {
          return SMProvider();
        }),

      )
    ],
        child: MyApp(),
    )
  );

}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}
