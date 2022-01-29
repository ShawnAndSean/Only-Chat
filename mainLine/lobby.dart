import 'package:flutter/material.dart';
import 'package:only_chat/constants.dart';
import 'userInterface.dart';
import 'loading_screen.dart';

class Lobby extends StatefulWidget {
  const Lobby({Key? key}) : super(key: key);
  static String id = 'Lobby.id';
  @override
  _LobbyState createState() => _LobbyState();
}

class _LobbyState extends State<Lobby> {
  getUserInterface() {
    return Navigator.pushNamed(context, UserInterface.id);
  }
  final bool willPop = false;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return willPop;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Lobby'),
          backgroundColor: kMainColor,
        ),
        body: SafeArea(
          child: Column(
            children: [
              TextButton(
                onPressed: getUserInterface,
                child: const Text('To Chat'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
