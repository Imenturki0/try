//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flat_chat/screens/welcome_screen.dart';
import 'package:flat_chat/screens/login_screen.dart';
import 'package:flat_chat/screens/registration_screen.dart';
import 'package:flat_chat/screens/chat_screen.dart';
import 'package:flat_chat/screens/main_screen.dart';
import 'package:flat_chat/screens/forget_screen.dart';
import 'package:flat_chat/screens/talk_to_us.dart';
import 'package:flat_chat/screens/user_profile.dart';
import 'package:flat_chat/screens/admin_control_panel.dart';
import 'package:flat_chat/constants.dart';
import 'screens/admin_control_panel.dart';

import 'package:firebase_core/firebase_core.dart';

void main() async  {

  WidgetsFlutterBinding.ensureInitialized();
  // Initialize Firebase
  await Firebase.initializeApp(
options: FirebaseOptions(
    apiKey: "AIzaSyArpdLDoxSQu-jWsjAJAY83X2WL6nKxV3I",
    authDomain: "bekro-cb502.firebaseapp.com",
    projectId: "bekro-cb502",
    storageBucket: "bekro-cb502.appspot.com",
    messagingSenderId: "62798148032",
    appId: "1:62798148032:web:4a8ddbc5c5445fba3f5825",
    measurementId: "G-F48RW3G3W5")
  );
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:AdminControlPanel(),
      //initialRoute: MainScreen.id ,
      theme: ThemeData(
        textSelectionTheme: TextSelectionThemeData(
            cursorColor: mainAppColor
        ),
      ),
      routes: {
        MainScreen.id: (context) => MainScreen(),
        WelcomeScreen.id : (context) =>  WelcomeScreen(),
        LoginScreen.id: (context) =>  LoginScreen(),
        RegistrationScreen.id: (context) =>  RegistrationScreen(),
        ForgotPassword.id: (context) =>  ForgotPassword(),
        ChatScreen.id: (context) =>  ChatScreen(),
        AdminControlPanel.id: (context) => AdminControlPanel(),
        UserProfile.id: (context) => UserProfile()

      },
    );
  }
}
