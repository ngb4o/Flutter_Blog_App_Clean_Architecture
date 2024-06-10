// import 'package:flutter_blog_app_clean_architecture/core/error/failures.dart';
// import 'package:flutter_blog_app_clean_architecture/features/auth/domain/repository/auth_repository.dart';
// import 'package:fpdart/fpdart.dart';
//
// import '../../../../core/usecase/usecase.dart';
//
// class UserSignUp implements Usecase<String, UserSignUpParams> {
//   final AuthRepository authRepository;
//
//   UserSignUp(this.authRepository);
//
//   @override
//   Future<Either<Failures, String>> call(UserSignUpParams params) async {
//     return await authRepository.signUpWithEmailPassword(
//       name: params.name,
//       email: params.email,
//       password: params.password,
//     );
//   }
// }
//
// class UserSignUpParams {
//   final String email;
//   final String name;
//   final String password;
//
//   UserSignUpParams({
//     required this.email,
//     required this.name,
//     required this.password,
//   });
// }
