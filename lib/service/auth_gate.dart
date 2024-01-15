import 'package:flutter/material.dart';
import 'package:minnal/controller/auth_provider.dart';
import 'package:minnal/view/home_page/home_page.dart';
import 'package:minnal/view/signin_page/signin_page.dart';
import 'package:provider/provider.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    return Scaffold(
      body: authProvider.user != null ? const HomePage() : const SignInPage(),
    );
  }
}
