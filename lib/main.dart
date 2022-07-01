import 'package:flutter/material.dart';
import 'package:flash_chat_flutter_clone/screens/welcome_screen.dart';
import 'package:flash_chat_flutter_clone/screens/login_screen.dart';
import 'package:flash_chat_flutter_clone/screens/registration_screen.dart';
import 'package:flash_chat_flutter_clone/screens/chat_screen.dart';
import 'package:firebase_core/firebase_core.dart';

//void main() => runApp(FlashChat());
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}
