
import 'package:buyer_app/userinterfacebloc/login/loginevent.dart';
import 'package:buyer_app/userinterfacebloc/login/loginstate.dart';
import 'package:buyer_app/utility/URL.dart';
import 'package:buyer_app/utility/Utility.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    // Register the event handler using `on` method
    on<LoginButtonPressed>(_onLoginButtonPressed);
  }

  Utility utility = Utility();

  Future<void> _onLoginButtonPressed(LoginButtonPressed event, Emitter<LoginState> emit) async {
    print('LoginButtonPressed event called');
    emit(LoginLoading());
    try {
      String url = CommonURL.URL + CommonURL.Login;

      Map<String, String> postdata = {
        "username": event.mobile,
        "password": event.password,
      };

      Map<String, String> headers = {
        "Content-Type": "application/x-www-form-urlencoded"
      };

      final response = await http.post(Uri.parse(url), headers: headers, body: postdata);

      print('Status Code: ${response.statusCode}');
      print('Response: ${response.body}');

      if (response.statusCode == 200 || response.statusCode == 201) {
        Map<String, dynamic> jsonInput = jsonDecode(response.body);
        String token = jsonInput['token'];

        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('token', token);

        print('Login success, token: $token');
        emit(LoginSuccess(token));
      } else {
        print('Login failed with status code: ${response.statusCode}');
        emit(LoginFailure("Login Failed"));
      }
    } catch (error) {
      print('Error occurred: $error');
      emit(LoginFailure("An error occurred"));
    }
  }
}
