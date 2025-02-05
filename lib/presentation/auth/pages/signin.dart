import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/common/helper/navigation/app_navigation.dart';
import 'package:movie_app/core/configs/theme/app_colors.dart';
import 'package:movie_app/presentation/auth/component/custom_button_widget.dart';
import 'package:movie_app/presentation/auth/component/custom_text_rich_widget.dart';
import 'package:movie_app/presentation/auth/component/text_field_widget.dart';
import 'package:movie_app/presentation/auth/component/custom_text_widget.dart';
import 'package:movie_app/presentation/auth/pages/signup.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          minimum: EdgeInsets.only(top: 100, right: 16, left: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomTextWidget(
                title: "Sign In",
              ),
              SizedBox(
                height: 30,
              ),
              TextFieldWidget(
                hint: 'Email',
              ),
              SizedBox(
                height: 20,
              ),
              TextFieldWidget(
                hint: 'Password',
              ),
              SizedBox(
                height: 60,
              ),
              CustomButtonWidget(
                title: "Sign In",
                activeColor: AppColors.primary,
                onTap: () async {},
                onFailure: (string) {},
                onSuccess: () {},
              ),
              SizedBox(
                height: 60,
              ),
              CustomTextRichWidget(
                title: "Dont you have account?",
                detail: " Sign up",
                onTap: TapGestureRecognizer()..onTap = () {
                  AppNavigator.push(context, SignupPage());
                },
              )
            ],
          )),
    );
  }
}
