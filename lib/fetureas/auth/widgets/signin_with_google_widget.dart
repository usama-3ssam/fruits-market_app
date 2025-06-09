import 'package:flutter/material.dart';

class SignInWithGoogelWidget extends StatelessWidget {
  const SignInWithGoogelWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            color: Colors.white,
            child: Image.asset(
              // color: Colors.white,
              'assets/images/google.png',
              width: 50,
              height: 50,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          const Text(
            'Sign in with Google',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
            ),
          ),
        ],
      ),
    );
  }
}
