import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfirebaselogin/services/auth_service.dart';
import 'package:flutterfirebaselogin/pages/curso_cars.dart';
import 'package:provider/provider.dart';
import 'package:flutterfirebaselogin/pages/video_card.dart';

import '../services/google_sign_in.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        bottomSheet: TabBar(tabs: <Widget>[
          Icon(
            Icons.smart_display,
            color: Colors.black,
            size: 50,
          ),
          Icon(
            Icons.home,
            color: Colors.black,
            size: 50,
          ),
          Icon(
            Icons.book,
            color: Colors.black,
            size: 50,
          ),
        ]),
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text('João'),
                accountEmail: Text('Joao Vitor@unifeob.edu'),
              ),
              ListTile(
                leading: Icon(Icons.people),
                title: Text('Perfil'),
                subtitle: Text('Verifcar Informações'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.book),
                title: Text('Cursos'),
                subtitle: Text('Sua galeria de cursos'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Sair'),
                subtitle: Text('Sair do Aplicativo'),
                onTap: () => context.read<AuthService>().logout(),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Sair da Conta'),
                subtitle: Text('Saia da sua conta google'),
                onTap: () {
                  final provider =
                      Provider.of<GoogleSignInProvider>(context, listen: false);
                  provider.logout();
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
            title: Image.asset(
          'image/Open-unifeob.png',
          height: 100.0,
          width: 100.0,
        )),
        body: TabBarView(children: <Widget>[
          VideoCard(),
          Center(
            child: Text(''),
          ),
          CursosPage(),
        ]),
      ),
    );
  }
}
