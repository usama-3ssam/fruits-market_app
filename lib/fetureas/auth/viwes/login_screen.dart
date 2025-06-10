// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:my_app/fetureas/auth/viwes/signup_screen.dart';
import 'package:my_app/fetureas/auth/widgets/forget_pass_widget.dart';
import 'package:my_app/fetureas/layouts/views/layout.dart';
import '../../../core/widgets/helper.dart';
import '../../../core/widgets/swiper_widget.dart';
import '../widgets/or_text_widget.dart';
import '../widgets/siginin_buttom_widget.dart';
import '../widgets/signin_with_google_widget.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailTextController = TextEditingController();
    TextEditingController passwordTextController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          const SwiperWidget(),
          Container(
            color: Colors.black.withOpacity(.7),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HorizontalSpace(
                        hight: 100,
                      ),
                      TextWidget(
                        text: 'Welcome Back',
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                      TextWidget(
                        fontSize: 20,
                        text: 'Sigin in to continue',
                        color: Colors.grey[200] as Color,
                      ),
                      HorizontalSpace(
                        hight: 20,
                      ),
                      textFormFiled(
                        controller: emailTextController,
                        label: 'Email',
                        onChang: (v) {},
                        keyboardType: TextInputType.emailAddress,
                      ),
                      HorizontalSpace(
                        hight: 20,
                      ),
                      textFormFiled(
                        controller: passwordTextController,
                        label: 'Password',
                        onChang: (v) {},
                        keyboardType: TextInputType.visiblePassword,
                        icon: Icons.remove_red_eye,
                      ),
                      const ForgetPassWidget(),
                      ButtonWidget(
                        buttomColor: Colors.grey[600] as Color,
                        function: () {
                          navTo(context, const HomeLayOut());
                        },
                        text: 'Sign In',
                        textColor: Colors.white,
                        fontSize: 22,
                      ),
                      HorizontalSpace(
                        hight: 20,
                      ),
                      const SignInWithGoogelWidget(),
                      HorizontalSpace(
                        hight: 20,
                      ),
                      const ORTextWidget(),
                      HorizontalSpace(hight: 20),
                      ButtonWidget(
                        buttomColor: Colors.black,
                        function: () {
                          navTo(context, const HomeLayOut());
                        },
                        text: 'Continue as a guest',
                        textColor: Colors.white,
                        fontSize: 20,
                      ),
                      HorizontalSpace(hight: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextWidget(
                            fontSize: 20,
                            text: 'Don\'t have an account?',
                            color: Colors.white,
                          ),
                          TextButton(
                            onPressed: () {
                              navTo(
                                context,
                                const SignUpScreen(),
                              );
                            },
                            child: TextWidget(
                              fontSize: 22,
                              text: 'Sign up',
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
