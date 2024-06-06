import 'package:flutter_blog_app_clean_architecture/core/error/failures.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class Usecase<SuccessType, Params> {
  Future<Either<Failures, SuccessType>> call(Params params);
}