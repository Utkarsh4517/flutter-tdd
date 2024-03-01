// This is an Interface or Contract
// It should define what functionalities this feature carries but it doesn't actually implements it.

import 'package:dartz/dartz.dart';
import 'package:tddmockapi/core/utils/typedef.dart';

import '../../../core/errors/failure.dart';
import '../domain/entities/user.dart';

abstract class AuthenticationRepository {
  const AuthenticationRepository();

  ResultVoid createUser({
    required String createdAt,
    required String name,
    required String avatar,
});

  ResultFuture<List<User>> getUsers();
}