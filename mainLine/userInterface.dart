import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:only_chat/constants.dart';

class UserInterface extends StatefulWidget {
  const UserInterface({Key? key}) : super(key: key);
  static String id = 'user_interface';
  @override
  _UserInterfaceState createState() => _UserInterfaceState();
}
class _UserInterfaceState extends State<UserInterface> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat'),
        backgroundColor: kMainColor,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children:  [
              const MessageBubble(
                message: 'asdasdas'),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    const Expanded(
                      child: TextField(
                        decoration: kMessageEnterDesign ,
                      ),
                    ),
                    IconButton(
                      onPressed: () {  },
                      icon: const Icon(
                          Icons.insert_emoticon,
                      ),
                      color: kMainColor,
                    ),
                    IconButton(
                      onPressed: () {  },
                      icon: const Icon(
                          Icons.send),
                      color: kMainColor,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MessageBubble extends StatelessWidget {
  final String message;
  const MessageBubble({Key? key, required this.message}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              message,
              style: const TextStyle(fontSize: 12, color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}

class MessageStream extends StatelessWidget {
  const MessageStream({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
