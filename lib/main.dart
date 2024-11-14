import 'package:flutter/material.dart';
import 'package:flutter_train_app/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
     //모드설정테스트
     themeMode: ThemeMode.light,
      // themeMode: ThemeMode.dark,
     
     //라이트모드 테마설정
     theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purple),
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white70,
      ),
      
      //다크모드는 나중에 해야지
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
      ),
    

      home: HomePage(),
    );
  }
}