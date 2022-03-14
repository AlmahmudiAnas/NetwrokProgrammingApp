import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sent/firebase_options.dart';
import 'package:sent/screens/chat_screen.dart';
import 'package:sent/screens/login_screen.dart';
import 'package:sent/screens/signup_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(Sent());
}

class Sent extends StatelessWidget {
  const Sent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        LoginScreen.routeName: (context) => LoginScreen(),
        SignupScreen.routeName: (context) => SignupScreen(),
        ChatScreen.routeName: (context) => ChatScreen(),
      },
      initialRoute: 'LoginScreen',
    );
  }
}
