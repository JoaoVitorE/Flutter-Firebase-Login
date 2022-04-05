import 'package:flutter/material.dart';
import 'package:flutterfirebaselogin/pages/home_page.dart';
import 'package:flutterfirebaselogin/pages/login_page.dart';
import 'package:flutterfirebaselogin/services/auth_service.dart';
import 'package:flutterfirebaselogin/services/users.dart';
import 'package:provider/provider.dart';
import 'package:flutterfirebaselogin/services/users.dart';

class AuthCheck extends StatefulWidget {
  const AuthCheck({Key? key}) : super(key: key);

  @override
  _AuthCheckState createState() => _AuthCheckState();
}

class _AuthCheckState extends State<AuthCheck> {
  @override
  Widget build(BuildContext context) {
    AuthService auth = Provider.of<AuthService>(context);

    if (auth.isLoading)
      return loadign();
    else if (auth.usuario == null)
      return LoginPage();
    else
      Users().addUser(auth.usuario!.email, auth.usuario!.uid);
    return HomePage();
  }

  loadign() {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
