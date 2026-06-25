import 'package:flutter/material.dart';
import 'package:login_example/presentation/widgets/login_app_bar.dart';
import 'package:login_example/presentation/widgets/login_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
            SizedBox(height: 100),
            LoginField(),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
                padding: EdgeInsets.zero,
                minimumSize: Size(0, 0),
                
              ),
              child: Text(
                'Forgot password?',
                style: TextStyle(
                  fontSize: 16,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            SizedBox(height: 150)
          ],
        ),
      ),
    );
  }
}