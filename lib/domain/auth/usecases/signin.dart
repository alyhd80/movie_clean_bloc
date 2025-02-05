
import 'package:dartz/dartz.dart';
import 'package:movie_app/core/usecase/usercase.dart';
import 'package:movie_app/data/models/signup_req_params.dart';
import 'package:movie_app/domain/auth/repositories/auth.dart';
import 'package:movie_app/service_locator.dart';

class SignupUseCase extends UseCase<Either,SignupReqParams>{



  @override
  Future<Either> call({SignupReqParams? params}) async {

    return await sl<AuthRepository>().signUp(params!);
  }

}









