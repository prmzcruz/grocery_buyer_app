import 'package:buyer_app/Utility/CommonColor.dart';
import 'package:buyer_app/utility/Colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Address extends StatefulWidget {
  const Address({super.key});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors
              .white, // Change this color to the desired drawer icon color
        ),
        centerTitle: true,
        title: Text(
          "ADDRESS",
          style: TextStyle(
              fontFamily: 'Lato',
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: HexColor(Colorscommon.whitecolor)),
        ),
        backgroundColor: HexColor(Colorscommon.greenlite),
        toolbarHeight: 70,
        actions: [
          Icon(Icons.more_vert, color: Colors.white),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(22.5, 10, 22.5, 33),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF68BB59),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(0.9, 9, 0, 10),
                  child: Text(
                    'ADDRESS DETAILS',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.getFont(
                      'Roboto',
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(24, 0, 24, 12),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'NAME',
                  style: GoogleFonts.getFont(
                    'Roboto',
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(22.5, 0, 22.5, 28),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFCCCCCC)),
                borderRadius: BorderRadius.circular(4),
                color: Color(0xFFFFFFFF),
              ),
              child: Container(
                padding: EdgeInsets.fromLTRB(16.5, 15, 16.5, 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
                      child: SizedBox(
                        width: 273,
                        height: 20, // Adjust this value to your desired height
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter your name',
                            hintStyle: GoogleFonts.getFont(
                              'Roboto',
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xB2000000),
                            ),
                            border: UnderlineInputBorder(borderSide: BorderSide.none),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/user_32.png',
                          ),
                        ),
                      ),
                      child: Container(
                        width: 16,
                        height: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(24, 0, 24, 12),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'DOOR NUMBER',
                  style: GoogleFonts.getFont(
                    'Roboto',
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(22.5, 0, 22.5, 29),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFCCCCCC)),
                borderRadius: BorderRadius.circular(4),
                color: Color(0xFFFFFFFF),
              ),
              child: Container(
                padding: EdgeInsets.fromLTRB(16.5, 14, 16.5, 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 1, 8, 0),
                      child: SizedBox(
                        width: 273,
                        height: 20,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter Door Number',
                            hintStyle: GoogleFonts.getFont(
                              'Roboto',
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xB2000000),
                            ),
                            border: UnderlineInputBorder(borderSide: BorderSide.none),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 1),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/images/flats_1.png',
                            ),
                          ),
                        ),
                        child: Container(
                          width: 16,
                          height: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(24, 0, 24, 12),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'STREET NAME',
                  style: GoogleFonts.getFont(
                    'Roboto',
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(22.5, 0, 22.5, 28),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFCCCCCC)),
                borderRadius: BorderRadius.circular(4),
                color: Color(0xFFFFFFFF),
              ),
              child: Container(
                padding: EdgeInsets.fromLTRB(16.5, 15, 16.5, 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
                      child: SizedBox(
                        width: 273,
                        height: 20,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter your Street Name',
                            hintStyle: GoogleFonts.getFont(
                              'Roboto',
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xB2000000),
                            ),
                            border: UnderlineInputBorder(borderSide: BorderSide.none),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/shop_1.png',
                          ),
                        ),
                      ),
                      child: Container(
                        width: 16,
                        height: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(24, 0, 24, 12),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'AREA',
                  style: GoogleFonts.getFont(
                    'Roboto',
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(22.5, 0, 22.5, 29),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFCCCCCC)),
                borderRadius: BorderRadius.circular(4),
                color: Color(0xFFFFFFFF),
              ),
              child: Container(
                padding: EdgeInsets.fromLTRB(16.5, 15, 16.5, 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
                      child: SizedBox(
                        width: 273,
                        height: 20,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter your Area',
                            hintStyle: GoogleFonts.getFont(
                              'Roboto',
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xB2000000),
                            ),
                            border: UnderlineInputBorder(borderSide: BorderSide.none),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/location_51.png',
                          ),
                        ),
                      ),
                      child: Container(
                        width: 16,
                        height: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(24, 0, 24, 12),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'LANDMARK',
                  style: GoogleFonts.getFont(
                    'Roboto',
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(22.5, 0, 22.5, 32),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFCCCCCC)),
                borderRadius: BorderRadius.circular(4),
                color: Color(0xFFFFFFFF),
              ),
              child: Container(
                padding: EdgeInsets.fromLTRB(16.5, 15, 16.5, 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
                      child: SizedBox(
                        width: 273,
                        height: 20,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter your Landmark',
                            hintStyle: GoogleFonts.getFont(
                              'Roboto',
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xB2000000),
                            ),
                            border: UnderlineInputBorder(borderSide: BorderSide.none),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/landmark_1.png',
                          ),
                        ),
                      ),
                      child: Container(
                        width: 16,
                        height: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(24, 0, 24, 12),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'LOCATION',
                  style: GoogleFonts.getFont(
                    'Roboto',
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(22.5, 0, 22.5, 23),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFCCCCCC)),
                borderRadius: BorderRadius.circular(4),
                color: Color(0xFFFFFFFF),
              ),
              child: Container(
                padding: EdgeInsets.fromLTRB(16.5, 15, 16.5, 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
                      child: SizedBox(
                        width: 273,
                        height: 20,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter your Location',
                            hintStyle: GoogleFonts.getFont(
                              'Roboto',
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xB2000000),
                            ),
                            border: UnderlineInputBorder(borderSide: BorderSide.none),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/location_51.png',
                          ),
                        ),
                      ),
                      child: Container(
                        width: 16,
                        height: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(22.5, 0, 22.5, 73),
              width: double.infinity,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF68BB59),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 13, 15, 13),
                  child: Text(
                    'SUBMIT',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.getFont(
                      'Roboto',
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
