import 'package:buyer_app/UserInterface/LoginRegister/buyer_change_password.dart';
import 'package:buyer_app/UserInterface/LoginRegister/buyer_forgotpassword.dart';
import 'package:buyer_app/UserInterface/LoginRegister/buyer_login.dart';
import 'package:buyer_app/UserInterface/LoginRegister/buyer_otp.dart';
import 'package:buyer_app/UserInterface/LoginRegister/buyer_otp_code.dart';
import 'package:buyer_app/UserInterface/LoginRegister/buyer_register.dart';
import 'package:buyer_app/UserInterface/dashboard_page.dart';
import 'package:buyer_app/Utility/CommonColor.dart';
import 'package:buyer_app/userinterfacebloc/home/homebloc.dart';
import 'package:buyer_app/userinterfacebloc/login/loginUI.dart';
import 'package:buyer_app/userinterfacebloc/login/loginbloc.dart';
import 'package:buyer_app/utility/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// void main() {
//   runApp(
//       MultiBlocProvider(
//         providers: [
//           BlocProvider<LoginBloc>(
//             create: (context) => LoginBloc(),
//           ),
//           BlocProvider<CategoryBloc>(
//             create: (context) => CategoryBloc(),
//           ),
//         ],
//         child: const MyApp(),
//       )
//   );
// }

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: HexColor(Colorscommon.greenlite)),
        useMaterial3: true,
      ),
      home:  BuyerLogin(),
      routes: {
        '/dashboard_Page': (context) => dashboard_Page(),
        '/buyer_register': (context) => buyer_register(),
        '/buyer_OTP_code': (context) => buyer_OTP_code(),
        '/buyer_OTP': (context) => buyer_OTP(),
        '/BuyerLogin': (context) => BuyerLogin(),
        '/buyer_forgorPassword': (context) => buyer_forgorPassword(),
        '/buyer_change_password': (context) => buyer_change_password(),
      },
      initialRoute: '/BuyerLogin',
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
