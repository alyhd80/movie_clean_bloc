import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/common/helper/navigation/app_navigation.dart';
import 'package:movie_app/core/configs/theme/app_colors.dart';
import 'package:movie_app/data/models/signup_req_params.dart';
import 'package:movie_app/data/repositories/auth.dart';
import 'package:movie_app/data/sources/auth_api_service.dart';
import 'package:movie_app/domain/auth/usecases/signin.dart';
import 'package:movie_app/presentation/auth/component/custom_button_widget.dart';
import 'package:movie_app/presentation/auth/component/custom_text_rich_widget.dart';
import 'package:movie_app/presentation/auth/component/custom_text_widget.dart';
import 'package:movie_app/presentation/auth/component/text_field_widget.dart';
import 'package:movie_app/service_locator.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
                title: "Sign Up",
              ),
              SizedBox(
                height: 30,
              ),
              TextFieldWidget(
                hint: 'Email',
                textEditingController: _emailController,
              ),
              SizedBox(
                height: 20,
              ),
              TextFieldWidget(
                hint: 'Password',
                textEditingController: _passwordController,
              ),
              SizedBox(
                height: 60,
              ),
              CustomButtonWidget(
                title: "Sign Up",
                activeColor: AppColors.primary,
                onTap: () async {

               await   sl<SignupUseCase>().call(
                    params: SignupReqParams(   email: _emailController.text,
                        password: _passwordController.text)
                  );


                },
                onFailure: (string) {},
                onSuccess: () {},
              ),
              SizedBox(
                height: 60,
              ),
              CustomTextRichWidget(
                title: "Don you have account?",
                detail: " Sign In",
                onTap: TapGestureRecognizer()
                  ..onTap = () {
                    AppNavigator.pushReplacement(context, SignupPage());
                  },
              )
            ],
          )),
    );
  }
}
