import 'dart:ui';

import 'package:flutter/material.dart';

import 'chat_message.dart';

class ChatbotScreen extends StatefulWidget {
  @override
  State<ChatbotScreen> createState() => _ChatbotScreenState();
}

class _ChatbotScreenState extends State<ChatbotScreen> {
  @override
  @override
  void didChangeDependencies() {
    _intialbotmessage();
    super.didChangeDependencies();
  }

  final List<ChatMessage> _messages = [];
  void _sendmessage(String txtt, String sender) {
    ChatMessage _message =
        ChatMessage(txtContainer: Container(child: Text(txtt)), sender: sender);
    setState(() {
      _messages.insert(0, _message);
    });
    _controller.clear();
  }
  void _sendmessage2(Widget txtt, String sender) {
    ChatMessage _message =
        ChatMessage(txtContainer: txtt, sender: sender);
    setState(() {
      _messages.insert(0, _message);
    });
  }

  final TextEditingController _controller = TextEditingController();
  Widget _buildTextComposer() {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.blueGrey.shade100),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 10),
              child: TextField(
                style: TextStyle(color: Colors.white),
                onSubmitted: (_) => _sendmessage(_controller.text, 'user'),
                controller: _controller,
                decoration: const InputDecoration(
                  hintText: 'Send a message',
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: (() => _sendmessage(_controller.text, 'user')),
            icon: Icon(Icons.send),
          )
        ],
      ),
    );
  }

  void _intialbotmessage() {
    ChatMessage _genMessage = ChatMessage(
        txtContainer: Container(child: _precodedTxt()), sender: 'ChatBot');
    setState(() {
      _messages.insert(0, _genMessage);
    });
  }

  Widget _repeat(String txt, String num) {
    return InkWell(
      onTap: () => tap(num),
      child: Container(
        width: 175,
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
            border: Border.all(color: Theme.of(context).primaryColor, width: 2),
            borderRadius: BorderRadius.circular(8)),
        child: Center(
            child: Text(
          txt,
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
      ),
    );
  }

  
  

  void tap(String num) {
    switch (num) {
      case "1":
        _sendmessage("Electricity Problem", 'user');
        _sendmessage(
            "You can contact or Email the main electrician of hostel\n\nElectrician: Amit Kumar \nRoom No.: G05 \nContact No.: 9890110989 \nWhatsapp No.:9890110989\nEmail: amitkumar@gmail.com.\n\n For getting the complain format. Click on format button \n\n",
            "ChatBot");
        _sendmessage2(ElevatedButton(
        onPressed: (() => Navigator.of(context).pushNamed('format')),
        child: Text("Format")), "ChatBot");
        break;
      //format()
      case "2":
        _sendmessage("Water Problem", 'user');
        _sendmessage(
            "You can contact or Email the Plumber of hostel\n\nPlumber: Shankar Sinha\nRoom No.: G10\nContact No.: 9890110981\n Whatsapp No.:9890110981\nEmail: sskumar@gmail.com. \n\nFor getting the complain format. Click on format button \n\n",
            "ChatBot");
            _sendmessage2(
            ElevatedButton(
                onPressed: (() => Navigator.of(context).pushNamed('format')),
                child: Text("Format")),
            "ChatBot");
        break;
        break;
      case "3":
        _sendmessage("Food issue", 'user');
        _sendmessage(
            "You can contact or Email the head chef of the mess\n\nHead Chef: Vijayshankar Chandrakar \nRoom No.: G011 \nContact No.: 9890110989 \nWhatsapp No.:9890110989\nEmail: vjiakumar@gmail.com. \n\nFor getting the complain format. Click on format button \n\n",
            "ChatBot");
            _sendmessage2(
            ElevatedButton(
                onPressed: (() => Navigator.of(context).pushNamed('format')),
                child: Text("Format")),
            "ChatBot");
        break;
      case "4":
        _sendmessage("Furniture breakdown", 'user');
        _sendmessage(
            "You can contact or Email Furniture maker\n\nName: Sharad Kumar \nRoom No.: G010 \nContact No.: 9890110989 \nWhatsapp No.:9890110989\nEmail: sdkumar@gmail.com. \n\nFor getting the complain format. Click on format button \n\n",
            "ChatBot");
            _sendmessage2(
            ElevatedButton(
                onPressed: (() => Navigator.of(context).pushNamed('format')),
                child: Text("Format")),
            "ChatBot");
        break;
      case "5":
        _sendmessage("Ragging", 'user');
        _sendmessage(
            "This is the highly serious issue complain to the below mentioned people\n\nChief Warden: Saurabh Kumar \nRoom No.: G12 \nContact No.: 9890110989 \nWhatsapp No.:9890110989\nEmail: skumar@gmail.com. \n\nRagging Punishment Committee Head: Sandip Sarker (Department of Humanities and Social Sciences)\nOffice room No.: S12 \nContact No.: 9890110989 \n Whatsapp No.:9890110989\nEmail: skumar@gmail.com. \n\nFor getting the complain format. Click on format button \n\n",
            "ChatBot");
            _sendmessage2(
            ElevatedButton(
                onPressed: (() => Navigator.of(context).pushNamed('format')),
                child: Text("Format")),
            "ChatBot");
        break;
      case "6":
        _sendmessage("Cleanliness", 'user');
        _sendmessage(
            'You can contact sweeping team head\n\nHead Sweeper: Sudip \nRoom No.: G45 \nContact No.: 9890110989\nWhatsapp No.:9890110989\nEmail: sudip@gmail.com. \n\nFor getting the complain format. Click on format button \n\n',
            "ChatBot");
            _sendmessage2(
            ElevatedButton(
                onPressed: (() => Navigator.of(context).pushNamed('format')),
                child: Text("Format")),
            "ChatBot");
        break;
      case "7":
        _sendmessage("Student Missing", 'user');
        _sendmessage(
            "You can contact the below mentioned students who are the group admin of the common hostel group just join in that group and mention your missing issue\n\nAbhishek Mishra\nRoom No.: 513 \nContact No.: 9890110989 \n\nPramil Kesharwani\nRoom No.: 336 \nContact No.: 9890110989 \n\n",
            "ChatBot");
        break;
      case "8":
        _sendmessage("Complain about some students", 'user');
        _sendmessage(
            "You can contact or Email the Chief Warden of hostel\n\nChief Warden: Saurabh Kumar \nRoom No.: G12 \n Contact No.: 9890110989 \nWhatsapp No.:9890110989\nEmail: skumar@gmail.com. \n\nFor getting the complain format. Click on format button \n\n",
            "ChatBot");
            _sendmessage2(
            ElevatedButton(
                onPressed: (() => Navigator.of(context).pushNamed('format')),
                child: Text("Format")),
            "ChatBot");
        break;
      case "9":
        _sendmessage("Main Menu ", 'user');
        _intialbotmessage();
        break;
      case "10":
        _sendmessage("Exit", 'user');
        _sendmessage("Sure. Let me how else can I help you", 'ChatBot');
        break;
      default:
        return _intialbotmessage();
    }
  }

  Widget _precodedTxt() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
              "What problem you are facing in hostel. Choose the corresponding options:\n"),
          _repeat("Electricity", "1"),
          _repeat("Water Problem", "2"),
          _repeat("Food issue", "3"),
          _repeat("Furniture breakdown", "4"),
          _repeat("Ragging", "5"),
          _repeat("Cleanliness", "6"),
          _repeat(" Student Missing", "7"),
          _repeat("Complain about some students", "8"),
          _repeat("Main Menu ", "9"),
          _repeat("Exit", "10"),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/background_image.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(title:Text('HostelBot'),leading: Container(
            margin:EdgeInsets.only(left:10),child: Image(image: AssetImage('assets/icon-removebg.png'), fit:BoxFit.fill,)),),
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
          )),
    );
  }
}
