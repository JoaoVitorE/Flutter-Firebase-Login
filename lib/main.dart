import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutterfirebaselogin/meu_aplicativo.dart';
import 'package:flutterfirebaselogin/services/auth_service.dart';
import 'package:flutterfirebaselogin/services/google_sign_in.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => AuthService()),
      ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),
      ),
    ],
    child: MeuAplicativo(),
  ));
}
