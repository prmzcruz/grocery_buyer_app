import 'dart:convert';
import 'package:buyer_app/UserInterface/Home/home_page.dart';
import 'package:buyer_app/UserInterface/dashboard_page.dart';
import 'package:buyer_app/Utility/CommonColor.dart';
import 'package:buyer_app/utility/Colors.dart';
import 'package:buyer_app/utility/URL.dart';
import 'package:buyer_app/utility/Utility.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart'as http;
import 'package:shared_preferences/shared_preferences.dart';

class BuyerLogin extends StatefulWidget {
  @override
  State<BuyerLogin> createState() => _BuyerLoginState();
}

class _BuyerLoginState extends State<BuyerLogin> {

  Utility utility = Utility();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool obscureText = true;
  bool checkbox = false;


  @override
  void initState(){
    super.initState();
    mobileController.text = '9507076318';
    passwordController.text='mystreetAdmin@123';

  }

  Future<void> _login(String mobile, String password) async{
    utility.showLoader(context);

    try{
      String url = CommonURL.URL+CommonURL.Login;

      Map<String, String> postdata = {
        "username": mobile,
        "password": password,
      };

      Map<String, String> headers = {
        "Content-Type": "application/x-www-form-urlencoded"
      };

      final response =
      await http.post(Uri.parse(url), headers: headers, body: postdata);
      print("saveRegisterAPI = $postdata, ${response.body}");
      if (response.statusCode == 200 || response.statusCode == 201) {
        utility.closeLoader(context);
        Map<String, dynamic> jsonInput = jsonDecode(response.body);
        String token = jsonInput['token'];
        print('token--$token');
        Map<String, dynamic> user = jsonInput['user'];
        int id = user['id'];
        String email = user['email'];
        String mobile = user['mobile'];
        String name = user['name'];
        int vehicleType = user['vehicle_type'];
        String userType = user['user_type'];
        String activeStatus = user['active'];

        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString('token', token);

        print('User ID: $id');
        print('User Email: $email');
        print('User Mobile: $mobile');
        print('User Name: $name');
        print('Vehicle Type: $vehicleType');
        print('User Type: $userType');
        print('Active Status: $activeStatus');

        Navigator.pushNamed(context, '/dashboard_Page');
        //Navigator.push(context, MaterialPageRoute(builder: (context)=>dashboard_Page()));
      }
    }catch(e){
      print(e);
    }
  }

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
                      _login(mobile,password);
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
    );
  }
}
