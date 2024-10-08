import 'package:buyer_app/Utility/CommonColor.dart';
import 'package:buyer_app/utility/Colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class buyer_forgorPassword extends StatefulWidget {
  const buyer_forgorPassword({super.key});

  @override
  State<buyer_forgorPassword> createState() => _buyer_forgorPasswordState();
}

class _buyer_forgorPasswordState extends State<buyer_forgorPassword> {
  TextEditingController mobilecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: HexColor(Colorscommon.whitecolor),
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
                    decoration:  BoxDecoration(
                      color: HexColor(Colorscommon.greenlite),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(90),
                      ),
                    ),
                    child: SizedBox(
                      height: 250,
                      child: Center(
                        child: Container(
                          decoration: BoxDecoration(
                            color: HexColor(Colorscommon.whitecolor),
                            borderRadius: BorderRadius.circular(60),
                          ),
                          height: 120, // Size of the circle
                          width: 120,  // Ensure it's a circle by setting width equal to height
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24,vertical: 40),
                  child: Row(
                    children: [
                      Expanded( // This allows the text to take up available space and wrap
                        child: Text(
                          'Enter your Phone Number we will send you a code to change your password',
                          textAlign: TextAlign.center, // Center align text
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Colors.black,
                          ),
                          maxLines: 2, // Limit to 2 lines
                          overflow: TextOverflow.ellipsis, // Handle overflow with ellipsis
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24,vertical: 35),
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle login action here
                    },
                    style: ElevatedButton.styleFrom(
                      primary: HexColor(Colorscommon.greenlite), // Background color
                      minimumSize: Size(double.infinity, 48), // Full width button
                    ),
                    child:  Text(
                      'SEND ME CODE',
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
                          text: "Back to Login Page ",
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
