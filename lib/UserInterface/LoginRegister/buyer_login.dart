import 'package:buyer_app/UserInterface/dashboard_page.dart';
import 'package:buyer_app/Utility/CommonColor.dart';
import 'package:buyer_app/utility/Colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuyerLogin extends StatefulWidget {
  @override
  State<BuyerLogin> createState() => _BuyerLoginState();
}

class _BuyerLoginState extends State<BuyerLogin> {
  final TextEditingController mobileController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter your Password',
                      suffixIcon: Icon(Icons.visibility),
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
                          Checkbox(value: false, onChanged: (value) {}),
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
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: ElevatedButton(
                    onPressed: () {
                      String mobile = mobileController.text;
                      String password = passwordController.text;
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>dashboard_Page()));
                      // Handle login action here
                    },
                    style: ElevatedButton.styleFrom(
                      primary: HexColor(Colorscommon.greenlite), // Background color
                      minimumSize: Size(double.infinity, 48), // Full width button
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
    );
  }
}
