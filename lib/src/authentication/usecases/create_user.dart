// Follows the SRP
import 'package:equatable/equatable.dart';
import 'package:tddmockapi/core/usecase/usecase.dart';
import 'package:tddmockapi/core/utils/typedef.dart';
import 'package:tddmockapi/src/authentication/repositories/authentication_repository.dart';

class CreateUser extends UsecaseWithParams<void, CreateUserParams>{
  const CreateUser(this._repository);

  final AuthenticationRepository _repository;

  @override
  ResultVoid call(CreateUserParams params) async => _repository.createUser(createdAt: params.createdAt, name: params.name, avatar: params.avatar,);


}

class CreateUserParams extends Equatable{
  const CreateUserParams({
    required this.createdAt,
    required this.name,
    required this.avatar,
  });

  const CreateUserParams.empty() :
      this(createdAt: 'createdAt', avatar: 'avatar', name: 'name');

  final String createdAt;
  final String name;
  final String avatar;



  @override
  // TODO: implement props
  List<Object?> get props => [createdAt, name, avatar];
}