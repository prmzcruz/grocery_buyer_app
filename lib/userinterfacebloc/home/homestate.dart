import 'package:equatable/equatable.dart';
import 'package:buyer_app/Modelclass/Category.dart';

abstract class CategoryState extends Equatable {
  @override
  List<Object> get props => [];
}

class CategoryInitial extends CategoryState {}

class CategoryLoading extends CategoryState {}

class CategoryLoaded extends CategoryState {
  final List<Category> categories;

  CategoryLoaded(this.categories);

  @override
  List<Object> get props => [categories];
}

class CategoryError extends CategoryState {
  final String error;

  CategoryError(this.error);

  @override
  List<Object> get props => [error];
}
