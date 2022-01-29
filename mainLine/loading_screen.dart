import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'userInterface.dart';
import 'lobby.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);
  static String id = 'loading_screen';

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}





class _LoadingScreenState extends State<LoadingScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController textController;
  late Animation backgroundColor;
  @override
  void initState() {
    super.initState();
    textController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    backgroundColor = ColorTween(begin: kMainColor, end: Colors.white)
        .animate(textController);
    textController.forward();
    textController.addListener(
      () {
        setState(
          () {},
        );
      },
    );
  }
  @override
  void callInterface(){
    Navigator.pushNamed(context,  Lobby.id);
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor.value,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: AnimatedTextKit(
              isRepeatingAnimation: false,
              onFinished:callInterface ,
              animatedTexts: [
                TypewriterAnimatedText(
                  'Only Chat.',
                  textStyle: const TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                  speed: const Duration(milliseconds:70),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
