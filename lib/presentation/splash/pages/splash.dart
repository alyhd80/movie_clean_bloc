import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/configs/assets/app_images.dart';
import 'package:movie_app/presentation/splash/bloc/splash_cubit.dart';
import 'package:movie_app/presentation/splash/bloc/splash_state.dart';


class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body:  BlocListener<SplashCubit,SplashState>(
        listener: (context,state){
          if(state is UnAuthenticated){

          }

          if(state is Authenticated){

          }
        },
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(AppImages.splashBackground,),fit: BoxFit.fitHeight)
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(begin: Alignment.center,end: Alignment.bottomCenter,colors: [
                  Color(0xff1A1B20).withValues(alpha: .6),
        
                  Color(0xff1A1B20),
        
        
                ])
              ),
            ),
            Container(
        alignment: Alignment.center,
              child: Text("movie app",style: TextStyle(fontSize: 75,fontWeight: FontWeight.w500),),
            ),
        
          ],
        ),
      ),
    );
  }
}
