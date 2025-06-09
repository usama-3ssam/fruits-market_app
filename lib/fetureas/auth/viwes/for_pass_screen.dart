// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import '../../../core/widgets/helper.dart';
import '../../../core/widgets/swiper_widget.dart';
import '../widgets/siginin_buttom_widget.dart';
import 'login_screen.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailTextController = TextEditingController();

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
                        hight: 50,
                      ),
                      SizedBox(
                        height: 30,
                        child: IconButton(
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            navTo(
                              context,
                              const LogInScreen(),
                            );
                          },
                        ),
                      ),
                      HorizontalSpace(
                        hight: 20,
                      ),
                      TextWidget(
                        text: 'Forget Password',
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                      HorizontalSpace(
                        hight: 20,
                      ),
                      textFormFiled(
                        controller: emailTextController,
                        label: 'Email address',
                        onChang: (v) {},
                        keyboardType: TextInputType.emailAddress,
                      ),
                      HorizontalSpace(
                        hight: 20,
                      ),
                      ButtonWidget(
                        buttomColor: Colors.grey[600] as Color,
                        text: 'Reset Now',
                        textColor: Colors.white,
                        function: () {
                          navTo(
                            context,
                            const LogInScreen(),
                          );
                        },
                        fontSize: 22,
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
