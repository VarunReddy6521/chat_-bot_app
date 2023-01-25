import 'package:flutter/material.dart';

class ChatbotScreen extends StatefulWidget {
  @override
  State<ChatbotScreen> createState() => _ChatbotScreenState();
}

class _ChatbotScreenState extends State<ChatbotScreen> {
  Widget _buildTextComposer() {
    return Row(
      children: [
        TextField(
        ),
        Icon(Icons.arrow_right)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('HostelBot')),
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
              child: _buildTextComposer(),
            )
          ],
        ));
  }
}
