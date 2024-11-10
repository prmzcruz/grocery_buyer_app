import 'package:equatable/equatable.dart';

abstract class CategoryEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class FetchCategories extends CategoryEvent {
  final String token;
  FetchCategories({required this.token});

  @override
  List<Object> get props => [token];
}
