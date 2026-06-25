import 'package:flutter/material.dart';
import 'package:login_example/presentation/pages/sign_up_page.dart';
import '../../utils/constants.dart';

class LoginField extends StatelessWidget {
  const LoginField({super.key}); 

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