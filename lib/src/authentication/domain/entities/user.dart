import 'package:equatable/equatable.dart';

class User extends Equatable {
  const User({
    required this.id,
    required this.createdAt,
    required this.name,
    required this.avatar,
  });

  const User.empty() : this(name: 'name', avatar: 'avatar', createdAt: 'createdAt', id: 1);

  final int id;
  final String createdAt;
  final String name;
  final String avatar;

  // Equatable package is used to equate two objects if they have have the same id, irrespective of their other values such as name.
  @override
  List<Object?> get props => [id];
}
