import 'package:chat_bot_app/chatbot.dart';
import 'package:chat_bot_app/login.dart';
import 'package:chat_bot_app/register.dart';
import 'package:chat_bot_app/splash.dart';
import 'package:flutter/material.dart';

import 'format.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login' :(context) => MyLogin(),
      'register':(context) => MyRegister(),
      'splash':(context) => Splash(),
      'chatbot':(context) => ChatbotScreen(),
      'format':(context) => Format()
    },
    theme: ThemeData(
      fontFamily: 'Quicksand',
      textTheme: ThemeData.light().textTheme.copyWith(
        headline6: const TextStyle(
                fontFamily: 'OpenSans',
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
      )
    ),
  ));
}

