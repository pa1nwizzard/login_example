import 'package:flutter/material.dart';
import 'package:login_example/models/user.dart';
import 'package:login_example/presentation/pages/profile_page.dart';
import 'package:login_example/presentation/pages/sign_up_page.dart';
import 'package:login_example/providers/user_provider.dart';
import 'package:provider/provider.dart';
import '../../utils/constants.dart';

class LoginField extends StatefulWidget {
  const LoginField({super.key});

  @override
  State<LoginField> createState() => _LoginFieldState();
}

class _LoginFieldState extends State<LoginField> {
  final TextEditingController _loginController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void signInPressed() async {
    String login = _loginController.text.trim();
    String password = _passwordController.text.trim();

    if (login.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter both login and password')),
      );
      return;
    }
    
    await Provider.of<UserProvider>(context, listen: false).login(login, password);
    User? user = Provider.of<UserProvider>(context, listen: false).user;

    if (user != null) {
      Navigator.of(context).push(
        MaterialPageRoute<void>(
          builder: (context) => const ProfilePage(),
        )
      );
      return;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Incorrect login or password')),
    );
    
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha(50),
                blurRadius: 10,
                offset: Offset(0, 5)
              )
            ]
          ),
          child: TextField(
            style: TextStyle(
              fontSize: 18,
              color: Colors.black
            ),
            controller: _loginController,
            decoration: Decors().inpDec(hintText: "Enter login"),
          ),
        ),
        SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha(50),
                blurRadius: 10,
                offset: Offset(0, 5)
              )
            ]
          ),
          child: TextField(
            style: TextStyle(
              fontSize: 18,
              color: Colors.black
            ),
            controller: _passwordController,
            decoration: Decors().inpDec(hintText: "Enter password"),
          ),
        ),
        SizedBox(height: 20),
        SizedBox(
          width: double.infinity,
          height: 60,
          child: ElevatedButton(
            onPressed: signInPressed,
            style: Decors().loginBtnStyle(Colors.black),
            child: Text(
              "Sign in",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        SizedBox(
          width: double.infinity,
          height: 60,
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (context) => const SignUpPage(),
                )
              );
            },
            style: Decors().loginBtnStyle(Colors.white),
            child: Text(
              "Sign up",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}