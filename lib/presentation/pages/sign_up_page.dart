import 'package:flutter/material.dart';
import 'package:login_example/presentation/pages/login_page.dart';
import 'package:login_example/presentation/widgets/sign_up_app_bar.dart';
import 'package:login_example/presentation/widgets/sign_up_field.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SignUpAppBar(),
            SizedBox(height: 20),
            SignUpField(),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (context) => const LoginPage(),
                  )
                );
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
                padding: EdgeInsets.zero,
                minimumSize: Size(0, 0),
                
              ),
              child: Text(
                'Sign in',
                style: TextStyle(
                  fontSize: 16,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            SizedBox(height: 100)
          ],
        ),
      ),
    );
  }
}