import 'package:tddmockapi/core/usecase/usecase.dart';
import 'package:tddmockapi/core/utils/typedef.dart';
import 'package:tddmockapi/src/authentication/domain/entities/user.dart';
import 'package:tddmockapi/src/authentication/repositories/authentication_repository.dart';

class GetUsers extends UsecaseWithoutParams<List<User>> {
  const GetUsers(this._repository);

  final AuthenticationRepository _repository;

  @override
  ResultFuture<List<User>> call() => _repository.getUsers();
}