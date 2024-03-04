import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tddmockapi/core/errors/failure.dart';
import 'package:tddmockapi/src/authentication/repositories/authentication_repository.dart';
import 'package:tddmockapi/src/authentication/usecases/authentication_repository.mock.dart';
import 'package:tddmockapi/src/authentication/usecases/create_user.dart';


void main() {
  late CreateUser useCase;
  late AuthenticationRepository repository;

  setUp(() {
    repository = MocKAuthenticationRepository();

    useCase = CreateUser(repository);
  });

  const params = CreateUserParams.empty();

  test(
    'should call the [Repository.createUser]',
        () async {
      // Arrange
      // STUB
      when(() => repository
          .createUser(
          createdAt: any(named: 'createdAt'),
          name: any(named: 'name'),
          avatar: any(named: 'avatar')
      ))
          .thenAnswer((_) async => const Right<Failure, void>(null));

      // Act
      final result = await useCase(params);

      // Assert
      expect(result, equals(const Right<Failure, void>(null)));
      verify(() => repository.createUser(
          createdAt: params.createdAt,
          name: params.name,
          avatar: params.avatar)).called(1);

      verifyNoMoreInteractions(repository);
    },
  );
}
