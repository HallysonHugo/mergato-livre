import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mergato_livre/app/modules/home/view/home_page.dart';

class LoginPage extends StatefulWidget {
  static const String route = '/';
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(),
          TextFormField(),
          ElevatedButton(
            onPressed: () {
              // Navigator.of(context).push(
              //     MaterialPageRoute(builder: (contex) => const HomePage()));
              // Navigator.of(context).pushNamed(HomePage.route);
              // Modular.to.push(
              //     MaterialPageRoute(builder: (context) => const HomePage()));
              Modular.to.navigate(HomePage.route);
            },
            child: const Text('Login'),
          ),
        ],
      ),
    );
  }
}
