import 'package:flutter/material.dart';
import 'package:lessen/Challenge.dart';
import 'package:lessen/HomeScreen.dart';
import 'package:lessen/Model/Word.dart';

void main() async {
 //print(await Word.getWords()) ;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      locale: Locale("SA", "AR"),
      theme: ThemeData(  
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF034852)),
        useMaterial3: true,
        
      ),
      home: HomeScreen()
    );
  }
}
