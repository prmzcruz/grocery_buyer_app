
import 'package:buyer_app/Utility/CommonColor.dart';
import 'package:buyer_app/userinterfacebloc/login/loginbloc.dart';
import 'package:buyer_app/userinterfacebloc/login/loginevent.dart';
import 'package:buyer_app/userinterfacebloc/login/loginstate.dart';
import 'package:buyer_app/utility/Colors.dart';
import 'package:buyer_app/utility/Utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class BuyerLoginBloc extends StatefulWidget {
  @override
  State<BuyerLoginBloc> createState() => _BuyerLoginBlocState();
}

class _BuyerLoginBlocState extends State<BuyerLoginBloc> {
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  Utility utility = Utility();
  bool obscureText = true;
  bool checkbox = false;

  @override
  void initState() {
    super.initState();
    mobileController.text = '9507076318';
    passwordController.text = 'mystreetAdmin@123';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state is LoginLoading) {
            // showDialog(
            //   context: context,
            //   builder: (_) => const Center(child: CircularProgressIndicator()),
            // );
            utility.showLoader(context);
          } else if (state is LoginSuccess) {
            //Navigator.pop(context); // Remove the loading dialog
            utility.closeLoader(context);
            Navigator.pushNamed(context, '/dashboard_Page');
          } else if (state is LoginFailure) {
            //Navigator.pop(context); // Remove the loading dialog
            utility.closeLoader(context);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.error)),
            );
          }
        },
        child: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0xFFFFFFFF),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // UI Components like mobile and password input
                // Submit Button
                Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFFFFFFFF),
                  ),
                  child: SingleChildScrollView(
                    child: Container(
                      //padding: EdgeInsets.fromLTRB(0, 0, 0, 144),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 52),
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Color(0xFF68BB59),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(90),
                                ),
                              ),
                              child: SizedBox(
                                height: 250,
                                child: Center(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFFFFFF),
                                      borderRadius: BorderRadius.circular(60),
                                    ),
                                    height: 120, // Size of the circle
                                    width: 120,  // Ensure it's a circle by setting width equal to height
                                  ),
                                ),
                              ),
                            ),
                          ),

                          // Mobile Number Label
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 24),
                            child: Row(
                              children: [
                                Text(
                                  'MOBILE NUMBER',
                                  style: GoogleFonts.getFont(
                                    'Roboto',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: HexColor(Colorscommon.black),
                                  ),
                                ),
                                Text(
                                  '*',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: HexColor(Colorscommon.red),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Mobile Number Input
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                            child: TextFormField(
                              controller: mobileController,
                              keyboardType: TextInputType.phone,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Enter your Mobile Number',
                              ),
                            ),
                          ),
                          // Password Label
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 24),
                            child: Row(
                              children: [
                                Text(
                                  'PASSWORD',
                                  style: GoogleFonts.getFont(
                                    'Roboto',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: HexColor(Colorscommon.black),
                                  ),
                                ),
                                Text(
                                  '*',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: HexColor(Colorscommon.red),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Password Input
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                            child: TextFormField(
                              controller: passwordController,
                              obscureText: obscureText,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Enter your Password',
                                suffixIcon: IconButton(onPressed: () {
                                  setState(() {
                                    obscureText=!obscureText;
                                  });
                                }, icon: Icon(Icons.visibility),),
                              ),
                            ),
                          ),
                          // Remember Me & Forgot Password
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Checkbox(value: checkbox, onChanged: (value) {
                                      setState(() {
                                        checkbox=!checkbox;
                                      });
                                    }),
                                    Text(
                                      'Remember Me',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'Forgot Password?',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: HexColor(Colorscommon.greenlite)
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Submit Button
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 24),
                            child: ElevatedButton(
                              onPressed: () {
                                String mobile = mobileController.text;
                                String password = passwordController.text;
                                print('button pressed');

                                context.read<LoginBloc>().add(
                                  LoginButtonPressed(mobile: mobile, password: password),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                primary: HexColor(Colorscommon.greenlite),
                                minimumSize: const Size(double.infinity, 48),
                              ),
                              child: Text(
                                'SUBMIT',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                            ),
                          ),
                          // Register Link
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 24),
                            child: Align(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                onTap: () {
                                  // Handle register action here
                                },
                                child: RichText(
                                  text: TextSpan(
                                    text: "Don’t have an account? ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: "Register",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: HexColor(Colorscommon.greenlite)
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
