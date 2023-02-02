import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class urlLaunch extends StatelessWidget {
  const urlLaunch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TASKS')),
      body: Center(
        child: ElevatedButton(
          onPressed: ()=>launchUrlString('https://chatbothostel.onrender.com/admin'),
          key: Key('Btn'),
          child: Text("Click here to go to tasks"),
        ),
      ),
    );
  }
}
