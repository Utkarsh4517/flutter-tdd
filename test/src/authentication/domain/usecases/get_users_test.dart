import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tddmockapi/core/errors/failure.dart';
import 'package:tddmockapi/src/authentication/domain/entities/user.dart';
import 'package:tddmockapi/src/authentication/repositories/authentication_repository.dart';
import 'package:tddmockapi/src/authentication/usecases/authentication_repository.mock.dart';
import 'package:tddmockapi/src/authentication/usecases/get_user.dart';

void main() {
  late GetUsers useCase;
  late AuthenticationRepository repository;

  setUp(() {
    repository = MocKAuthenticationRepository();
    useCase = GetUsers(repository);
  });

  const tResponse = [User.empty()];

  test(
      'should call the [Repository.getUsers] and it should return [List<User>]',
      () async {
    // arrange
    // stub
    when(() => repository.getUsers())
        .thenAnswer((_) async => const Right<Failure, List<User>>(tResponse));

    // act
    final result = await useCase();

    expect(result, equals(const Right<Failure, List<User>>(tResponse)));
    verify(() => repository.getUsers()).called(1);
    verifyNoMoreInteractions(repository);
  });
}
