import 'package:flutter/material.dart';
import 'package:only_chat/mainLine/lobby.dart';
import 'mainLine/loading_screen.dart';
import 'mainLine/userInterface.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: LoadingScreen.id, routes: {
        LoadingScreen.id: (context) => const LoadingScreen(),
        UserInterface.id: (context) => const UserInterface(),
        Lobby.id:(context)=>const Lobby(),
    }
    );
  }
}