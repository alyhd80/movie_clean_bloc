



import 'package:dartz/dartz.dart';
import 'package:movie_app/data/models/signup_req_params.dart';

abstract class AuthRepository {
  Future<Either> signUp(SignupReqParams params);
  Future<Either> signIn(SignupReqParams params);

}
