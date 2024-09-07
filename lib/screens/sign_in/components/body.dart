import 'package:career_paths/animation/fade_animation.dart';
import 'package:career_paths/components/no_account_text.dart';
import 'package:career_paths/components/socal_card.dart';
import 'package:flutter/material.dart';
import '../../../size_config.dart';
import 'sign_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overScroll) {
          overScroll.disallowIndicator();
          return true;
        },
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: SizeConfig.screenHeight * 0.04),
                  FadeAnimation(
                    delay: 1.5,
                    child: Column(
                      children: [
                        Text(
                          "Welcome Back",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: getProportionateScreenWidth(28),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Sign in with your email and password  \nor continue with social media",
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.08),
                  SignForm(),
                  SizedBox(height: SizeConfig.screenHeight * 0.08),
                  FadeAnimation(
                    delay: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SocalCard(
                          icon: "assets/icons/google-icon.svg",
                          press: () {},
                        ),
                        SocalCard(
                          icon: "assets/icons/facebook-2.svg",
                          press: () {},
                        ),
                        SocalCard(
                          icon: "assets/icons/twitter.svg",
                          press: () {},
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(20)),
                  NoAccountText(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
