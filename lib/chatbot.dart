import 'package:flutter/material.dart';

import 'chat_message.dart';

class ChatbotScreen extends StatefulWidget {
  @override
  State<ChatbotScreen> createState() => _ChatbotScreenState();
}

class _ChatbotScreenState extends State<ChatbotScreen> {
  final List<ChatMessage> _messages = [];
  void _sendmessage() {
    ChatMessage _message = ChatMessage(text: _controller.text, sender: 'user');
    setState(() {
      _messages.insert(0, _message);
    });
    _controller.clear();
  }

  final TextEditingController _controller = TextEditingController();
  Widget _buildTextComposer() {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: TextField(
              onSubmitted: (_)=>_sendmessage(),
              controller: _controller,
              decoration: const InputDecoration(
                hintText: 'Send a message',
              ),
            ),
          ),
        ),
        IconButton(
          onPressed: _sendmessage,
          icon: Icon(Icons.send),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('HostelBot')),
        body: SafeArea(
          child: Column(
            children: [
              Flexible(
                  child: ListView.builder(
                      reverse: true,
                      padding: EdgeInsets.all(8),
                      itemCount: _messages.length,
                      itemBuilder: (context, index) {
                        return _messages[index];
                      })),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: _buildTextComposer(),
              )
            ],
          ),
        ));
  }
}
