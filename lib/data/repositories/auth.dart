import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:movie_app/core/constants/api_url.dart';
import 'package:movie_app/core/network/dio_client.dart';
import 'package:movie_app/data/models/signup_req_params.dart';
import 'package:movie_app/data/sources/auth_api_service.dart';
import 'package:movie_app/domain/auth/repositories/auth.dart';
import 'package:movie_app/service_locator.dart';

class AuthRepositoryImpl extends AuthRepository {


  @override
  Future<Either> signUp(SignupReqParams params) async {
    return await sl<AuthApiService>().signup(params);
  }
}
