import 'package:flutter/material.dart';
import '../utils/constants.dart';

class LoginField extends StatefulWidget {
  const LoginField({super.key});

  @override
  State<LoginField> createState() => _LoginFieldState();
}

class _LoginFieldState extends State<LoginField> {
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
            decoration: Decors().inpDec(hintText: "Enter password"),
          ),
        ),
        SizedBox(height: 20),
        SizedBox(
          width: double.infinity,
          height: 60,
          child: ElevatedButton(
            onPressed: () {},
            style: Decors().loginBtnStyle(),
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
      ],
    );
  }
}