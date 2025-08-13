import 'package:e_commerce/auth/login/login_screen.dart';
import 'package:e_commerce/core/logic/helper_methods.dart';
import 'package:flutter/material.dart';

class ShowDialog extends StatelessWidget {
  const ShowDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Logout'),
      content: Text('Do you really want to logout?'),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            navigateTo(toPage: LoginScreen(),isRemove: true);
          },
          child: Text('OK'),
        ),
      ],
    );
  }
}
