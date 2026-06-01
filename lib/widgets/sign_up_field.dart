import 'package:flutter/material.dart';
import 'package:login_example/utils/constants.dart';

class SignUpField extends StatefulWidget {
  const SignUpField({super.key});

  @override
  State<SignUpField> createState() => _SignUpFieldState();
}

class _SignUpFieldState extends State<SignUpField> {
  final TextEditingController loginController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController tryPasswordController = TextEditingController();

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
            controller: loginController,
            style: TextStyle(
              fontSize: 18,
              color: Colors.black
            ),
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
            controller: passwordController,
            style: TextStyle(
              fontSize: 18,
              color: Colors.black
            ),
            decoration: Decors().inpDec(hintText: "Enter password"),
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
            controller: tryPasswordController,
            style: TextStyle(
              fontSize: 18,
              color: Colors.black
            ),
            decoration: Decors().inpDec(hintText: "Try password"),
          ),
        ),
        SizedBox(height: 20),
        SizedBox(
          width: double.infinity,
          height: 60,
          child: ElevatedButton(
            onPressed: () {},
            style: Decors().loginBtnStyle(Colors.black),
            child: Text(
              "Sign up",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}