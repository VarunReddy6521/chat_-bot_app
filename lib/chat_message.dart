import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  const ChatMessage({super.key, required this.txtContainer, required this.sender});

  final Widget txtContainer;
  final String sender;

  @override
  Widget build(BuildContext context){
    return Card(
        elevation: 1,
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xFFFAFFD1),
                Color(0xFFA1FFCE),
              ],
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.only(right: 16),
                child: CircleAvatar(child: Text(sender[0])),
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(sender, style: Theme.of(context).textTheme.headline4,),
                  Container(
                    margin: const EdgeInsets.only(top: 7 ,bottom: 7,),
                    child: txtContainer,
                  )
                ],
              ))
            ],
          ),
        )
    );
  }
}
