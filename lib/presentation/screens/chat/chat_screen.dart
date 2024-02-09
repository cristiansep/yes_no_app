import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

import '../../widgets/chat/her_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://1.bp.blogspot.com/-2L4Qhi5Fzso/TfNiRLLr1pI/AAAAAAAAA8Q/uNxrs1sJqgQ/s1600/Jennifer_Aniston_New_Haircut_Modern_Long_Bob_.jpg'),
          ),
        ),
        title: const Text('la lala'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(child: ListView.builder(itemBuilder: (context, index) {
              return ( index % 2 == 0 )
              ? const HerMessageBubble()
              : const MyMessageBubble();
            })),
            
            // input
            const MessageFiledBox(),
          ],
        ),
      ),
    );
  }
}