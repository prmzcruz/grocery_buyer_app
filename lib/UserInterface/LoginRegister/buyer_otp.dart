import 'package:buyer_app/Utility/CommonColor.dart';
import 'package:buyer_app/utility/Colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class buyer_OTP extends StatefulWidget {
  const buyer_OTP({super.key});

  @override
  State<buyer_OTP> createState() => _buyer_OTPState();
}

class _buyer_OTPState extends State<buyer_OTP> {

  TextEditingController mobilecontroller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: HexColor(Colorscommon.whitecolor), // Background color
        child: SingleChildScrollView(
          child: Center( // Center the entire content horizontally
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center, // Align content to center
              children: [
                SizedBox(height: 76.8), // Top margin space
                Container(
                  decoration: BoxDecoration(
                    color: Color(0x3368BB59),
                    borderRadius: BorderRadius.circular(60),
                  ),
                  width: 120,
                  height: 120,
                  padding: EdgeInsets.fromLTRB(1, 29.8, 0, 30.2),
                  child: Image.asset(
                    'assets/images/touch_1.png',
                    width: 30,
                    height: 30,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 40), // Space between the image and text
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    'Please enter the OTP (One Time Password) to verify your account. A code has been sent to ********893',
                    textAlign: TextAlign.center, // Center align text
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.black,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(height: 35), // Space between text and next element
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start, // Center align the row
                    children: [
                      Text(
                        'Mobile Number',
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
                          color: Color(0xFFFF0000),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  child: TextFormField(
                    controller: mobilecontroller,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter your Mobile Number',
                    ),
                  ),
                ),
                SizedBox(height: 35),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle login action here
                    },
                    style: ElevatedButton.styleFrom(
                      primary: HexColor(Colorscommon.greenlite), // Background color
                      minimumSize: Size(double.infinity, 48), // Full width button
                    ),
                    child:  Text(
                      'GET OTP',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: HexColor(Colorscommon.whitecolor),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: Align(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () {
                        // Handle register action here
                      },
                      child: RichText(
                        text:  TextSpan(
                          text: "Back to Login Page",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: HexColor(Colorscommon.greenlite),
                          ),
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
