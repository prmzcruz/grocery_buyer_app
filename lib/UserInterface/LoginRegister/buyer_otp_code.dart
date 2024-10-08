import 'package:buyer_app/Utility/CommonColor.dart';
import 'package:buyer_app/utility/Colors.dart';
import 'package:flutter/material.dart';

class buyer_OTP_code extends StatefulWidget {
  const buyer_OTP_code({super.key});

  @override
  State<buyer_OTP_code> createState() => _buyer_OTP_codeState();
}

class _buyer_OTP_codeState extends State<buyer_OTP_code> {
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
                    'assets/images/otp_1.png',
                    width: 30,
                    height: 30,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 40), // Space between the image and text
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    'Enter the 4-digit code which has been sent to ********893',
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

                // 4-digit OTP input design
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(4, (index) => _buildOTPInputField()), // Create 4 TextFormFields for OTP
                  ),
                ),

                SizedBox(height: 35), // Space between OTP fields and next element
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
                    child: const Text(
                      'VERIFY OTP',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: Color(0xFFFFFFFF),
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
                        // Handle back to login page action
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
  Widget _buildOTPInputField() {
    return SizedBox(
      width: 50,
      child: TextFormField(
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          counterText: '', // Removes the length counter
        ),
        maxLength: 1, // Limit to 1 character per input field
      ),
    );
  }

}

