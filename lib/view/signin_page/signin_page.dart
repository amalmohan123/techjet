import 'package:flutter/material.dart';
import 'package:minnal/controller/auth_provider.dart';
import 'package:provider/provider.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
      var authprovider = Provider.of<AuthProvider>(context);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: size.width,
              height: size.height * .66,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Image.asset(
                'assets/images/Rectangle 52.png',
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(height: 35),
            const Text(
              'Drive in without delay',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
            ),
            const SizedBox(height: 10),
            Text(
              'Lorem ipsum dolor sit amet consectetur. \nNeque et nulla et.',
              style: TextStyle(letterSpacing: 1, color: Colors.grey.shade600),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 55),
            GestureDetector(
              onTap: () {
                 authprovider.signInWithGoogle();
              },
              child: Container(
                width: size.width * .5,
                height: size.height * .065,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1.5, color: Colors.black),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 6),
                      child: Image.asset(
                        'assets/images/google 4.png',
                      ),
                    ),
                    const Text(
                      'Sign in',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
