import 'package:chat_bot_app/Alogin.dart';
import 'package:chat_bot_app/chatbot.dart';
import 'package:chat_bot_app/initialLScreen.dart';

import 'package:chat_bot_app/register.dart';
import 'package:chat_bot_app/splash.dart';
import 'package:flutter/material.dart';

import './Slogin.dart';
import './format.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'Blogin',
    routes: {
      'Blogin':(context) => BtnScreen(),
      'Slogin': (context) => MySLogin(),
      'Alogin': (context) => MyALogin(),
      'register': (context) => MyRegister(),
      'splash': (context) => Splash(),
      'chatbot': (context) => ChatbotScreen(),
      'format': (context) => Format()
    },
    theme: ThemeData(
        fontFamily: 'Quicksand',
        textTheme: ThemeData.light().textTheme.copyWith(
            headline6: const TextStyle(
              fontFamily: 'OpenSans',
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.white
            ),
            headline4: const TextStyle(
              fontFamily: 'RobotoSlab',
              fontWeight: FontWeight.normal,
              fontSize: 18,
              
            ))),
  ));
}
