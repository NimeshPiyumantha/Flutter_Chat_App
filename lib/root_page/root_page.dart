import 'package:flutter/material.dart';
import 'package:flutter_chat_app/screen/home_screen.dart';

class ChatApp extends StatelessWidget {
  const ChatApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "OpenSans",
        primaryColor: const Color(0xFF075E54),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: const Color(0xFF128C7E),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor:
              Color(0xFF075E54), // Set the app bar background color
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePageView(),
    );
  }
}
