// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:my_app/core/widgets/helper_widgets.dart';
import 'package:my_app/core/widgets/swiper_widget.dart';
import '../widgets/siginin_buttom_widget.dart';
import 'login_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailTextController = TextEditingController();
    TextEditingController passwordTextController = TextEditingController();
    TextEditingController nameTextController = TextEditingController();
    TextEditingController addressTextController = TextEditingController();

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
                      HorizontalSpace(hight: 100),
                      TextWidget(
                        text: 'Welcome Back',
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                      TextWidget(
                        fontSize: 20,
                        text: 'Signup in to continue',
                        color: Colors.grey[200] as Color,
                      ),
                      HorizontalSpace(hight: 10),
                      textFormFiled(
                        controller: nameTextController,
                        label: 'Name',
                        keyboardType: TextInputType.text,
                        onChang: (v) {},
                      ),
                      HorizontalSpace(hight: 10),
                      textFormFiled(
                        controller: emailTextController,
                        label: 'Email',
                        keyboardType: TextInputType.emailAddress,
                        onChang: (v) {},
                      ),
                      HorizontalSpace(hight: 10),
                      textFormFiled(
                        controller: passwordTextController,
                        label: 'Password',
                        keyboardType: TextInputType.number,
                        onChang: (v) {},
                        icon: Icons.remove_red_eye,
                      ),
                      HorizontalSpace(hight: 10),
                      textFormFiled(
                        controller: addressTextController,
                        label: 'shopping address',
                        keyboardType: TextInputType.visiblePassword,
                        onChang: (v) {},
                      ),
                      HorizontalSpace(hight: 10),
                      ButtonWidget(
                        buttomColor: Colors.grey[600] as Color,
                        text: 'Sign Up',
                        textColor: Colors.white,
                        function: () {
                          // navTo(context, const HomeLayOut());
                        },
                        fontSize: 22,
                      ),
                      HorizontalSpace(hight: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextWidget(
                            text: 'Already have an account!',
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          TextButton(
                            onPressed: () {
                              navTo(
                                context,
                                const LogInScreen(),
                              );
                            },
                            child: TextWidget(
                              text: 'Sign in',
                              color: Colors.blue,
                              fontSize: 22,
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
