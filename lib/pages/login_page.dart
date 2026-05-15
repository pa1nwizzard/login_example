import 'package:flutter/material.dart';
import 'package:login_example/widgets/login_app_bar.dart';
import 'package:login_example/widgets/login_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            LoginAppBar(),
            LoginField(),
            SizedBox(height: 100,)
          ],
        ),
      ),
    );
  }

  
}