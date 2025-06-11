import 'package:flutter/material.dart';
import 'package:my_app/fetureas/auth/views/for_pass_screen.dart';

class ForgetPassWidget extends StatelessWidget {
  const ForgetPassWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ForgetPasswordScreen(),
              ),
            );
          },
          child: const Text(
            'Forget Password',
            style: TextStyle(
              decoration: TextDecoration.underline,
              color: Colors.blue,
              fontWeight: FontWeight.w500,
              fontSize: 22,
            ),
          ),
        ),
      ],
    );
  }
}
