import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:buyer_app/Modelclass/Category.dart';
import 'package:buyer_app/userinterfacebloc/home/homeevnet.dart';
import 'package:buyer_app/userinterfacebloc/home/homestate.dart';
import 'package:buyer_app/utility/CommonColor.dart';
import 'package:buyer_app/utility/URL.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart' as http;

// import 'category_event.dart';
// import 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {

  CategoryBloc() : super(CategoryInitial()) {
    on<FetchCategories>(_onFetchCategories);
  }

  Future<void> _onFetchCategories(FetchCategories event, Emitter<CategoryState> emit) async {
    emit(CategoryLoading());
    try {
      final response = await http.get(
        Uri.parse(CommonURL.URL + CommonURL.categories),
        headers: {
          'Authorization': 'Bearer ${event.token}',
        },
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<Category> categories = (jsonDecode(response.body) as List)
            .map((data) => Category.fromJson(data))
            .toList();
        emit(CategoryLoaded(categories));
      } else {
        emit(CategoryError('Error fetching categories'));
      }
    } catch (e) {
      emit(CategoryError(e.toString()));
    }
  }
}
