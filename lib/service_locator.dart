

import 'package:get_it/get_it.dart';
import 'package:movie_app/core/network/dio_client.dart';
import 'package:movie_app/data/repositories/auth.dart';
import 'package:movie_app/data/sources/auth_api_service.dart';
import 'package:movie_app/domain/auth/repositories/auth.dart';
import 'package:movie_app/domain/auth/usecases/signin.dart';

final sl=GetIt.instance;


void setupServiceLocator(){
  sl.registerSingleton<DioClient>(DioClient());

  ///services
  sl.registerSingleton<AuthApiService>(AuthApiServiceImpl());


  ///repositories
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());
  
  
  
  ///usercases
  sl.registerSingleton<SignupUseCase>(SignupUseCase());


}