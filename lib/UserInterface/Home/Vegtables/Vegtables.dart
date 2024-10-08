import 'package:buyer_app/UserInterface/Home/Vegtables/Address.dart';
import 'package:buyer_app/Utility/CommonColor.dart';
import 'package:buyer_app/utility/Colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Vegtables extends StatefulWidget {
  const Vegtables({super.key});

  @override
  State<Vegtables> createState() => _VegtablesState();
}

class _VegtablesState extends State<Vegtables> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors
              .white, // Change this color to the desired drawer icon color
        ),
        centerTitle: true,
        title: Text(
          "VEGTABLES",
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
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(22.5, 22.5, 22.5, 15),
            width: double.infinity,
            child: Container(
              decoration: BoxDecoration(
                color: HexColor(Colorscommon.greenlite),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 9, 0.1, 10),
                child: Center(
                  child: Text(
                    'AVAILABLE VEGETABLES',
                    style: GoogleFonts.getFont(
                      'Roboto',
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: HexColor(Colorscommon.whitecolor),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(24, 0, 22, 16),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
              ),
              child: Container(
                padding: EdgeInsets.fromLTRB(9, 12, 0, 11),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 2),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/images/loupe_1.png',
                            ),
                          ),
                        ),
                        child: Container(
                          width: 10,
                          height: 10,
                        ),
                      ),
                    ),
                    Text(
                      'Search...',
                      style: GoogleFonts.getFont(
                        'Roboto',
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(24, 0, 23, 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 6, 0),
                  child: SizedBox(
                    width: 248,
                    child: Text(
                      '15 items',
                      style: GoogleFonts.getFont(
                        'Roboto',
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 3.5, 0),
                      child: Text(
                        'Sort',
                        style: GoogleFonts.getFont(
                          'Roboto',
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 2, 11, 2),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/images/sort_2.png',
                            ),
                          ),
                        ),
                        child: Container(
                          width: 8,
                          height: 8,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 2.6, 0),
                      child: Text(
                        'Filter',
                        style: GoogleFonts.getFont(
                          'Roboto',
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 2, 0, 2),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/images/filter_1.png',
                            ),
                          ),
                        ),
                        child: Container(
                          width: 8,
                          height: 8,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(24, 0, 23, 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(22, 0, 0, 8),
                            width: 50,
                            height: 47.9,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/images/tomato_png_image_1.png'),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 46.9),
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xFF68BB59)),
                              borderRadius: BorderRadius.circular(2),
                              color: Color(0xFF68BB59),
                            ),
                            child: Container(
                              width: 8,
                              height: 8,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 68.5,
                        decoration: BoxDecoration(
                          color: Color(0xFF68BB59),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          'Tomatoes',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 8,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         Container(
                           margin: EdgeInsets.fromLTRB(22, 0, 0, 8),
                            width: 50,
                            height: 45.8,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/images/onion_png_992131.png'),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 46.9),
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xFF68BB59)),
                              borderRadius: BorderRadius.circular(2),
                              color: HexColor(Colorscommon.whitecolor),
                            ),
                            child: Container(
                              width: 8,
                              height: 8,
                            ),
                          ),
                        ],

                      ),
                      Container(
                        width: 68.5,
                        decoration: BoxDecoration(
                          color: Color(0xFF68BB59),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          'Onions',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 8,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(22, 0, 0, 8),
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/images/lady_finger_okra_png_hd_image_1.png'),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 46.9),
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xFF68BB59)),
                              borderRadius: BorderRadius.circular(2),
                              color: HexColor(Colorscommon.whitecolor),
                            ),
                            child: Container(
                              width: 8,
                              height: 8,
                            ),
                          ),
                        ],

                      ),
                      Container(
                        width: 68.5,
                        decoration: BoxDecoration(
                          color: Color(0xFF68BB59),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          'Ladysfinger',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 8,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.fromLTRB(24, 0, 23, 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(22, 0, 0, 8),
                            width: 50,
                            height: 47.9,
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'assets/images/cauliflower_transparent_image_thumb_1.png',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 49),
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xFFCCCCCC)),
                              borderRadius: BorderRadius.circular(2),
                              color: Color(0xFFFFFFFF),
                            ),
                            child: Container(
                              width: 8,
                              height: 8,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 68.5,
                        decoration: BoxDecoration(
                          color: Color(0xFF68BB59),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          'Cauliflower',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont(
                            'Roboto',
                            fontWeight: FontWeight.w500,
                            fontSize: 8,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(22, 0, 0, 8),
                            width: 50,
                            height: 45.8,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'assets/images/brinjal_bunch_free_download_png_hq_1.png',
                                  ),
                                ),
                              ),
                              child: Container(
                                width: 50,
                                height: 47.9,
                              ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 46.9),
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xFFCCCCCC)),
                              borderRadius: BorderRadius.circular(2),
                              color: Color(0xFFFFFFFF),
                            ),
                            child: Container(
                              width: 8,
                              height: 8,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 68.5,
                        decoration: BoxDecoration(
                          color: Color(0xFF68BB59),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            'Brinjal',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.getFont(
                              'Roboto',
                              fontWeight: FontWeight.w500,
                              fontSize: 8,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(22, 0, 0, 8),
                            width: 50,
                            height: 45.8,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'assets/images/pngimg_3.png',
                                ),
                              ),
                            ),
                            child: Container(
                              width: 50,
                              height: 47.9,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 20, 46.9),
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xFFCCCCCC)),
                              borderRadius: BorderRadius.circular(2),
                              color: Color(0xFFFFFFFF),
                            ),
                            child: Container(
                              width: 8,
                              height: 8,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 68.5,
                        decoration: BoxDecoration(
                          color: Color(0xFF68BB59),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          'Cucumber',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont(
                            'Roboto',
                            fontWeight: FontWeight.w500,
                            fontSize: 8,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(24, 0, 23, 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(22, 0, 0, 8),
                            width: 50,
                            height: 47.9,
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'assets/images/cauliflower_transparent_image_thumb_1.png',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 49),
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xFFCCCCCC)),
                              borderRadius: BorderRadius.circular(2),
                              color: Color(0xFFFFFFFF),
                            ),
                            child: Container(
                              width: 8,
                              height: 8,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 68.5,
                        decoration: BoxDecoration(
                          color: Color(0xFF68BB59),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          'Cauliflower',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont(
                            'Roboto',
                            fontWeight: FontWeight.w500,
                            fontSize: 8,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(22, 0, 0, 8),
                            width: 50,
                            height: 45.8,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'assets/images/brinjal_bunch_free_download_png_hq_1.png',
                                ),
                              ),
                            ),
                            child: Container(
                              width: 50,
                              height: 47.9,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 46.9),
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xFFCCCCCC)),
                              borderRadius: BorderRadius.circular(2),
                              color: Color(0xFFFFFFFF),
                            ),
                            child: Container(
                              width: 8,
                              height: 8,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 68.5,
                        decoration: BoxDecoration(
                          color: Color(0xFF68BB59),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          'Brinjal',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont(
                            'Roboto',
                            fontWeight: FontWeight.w500,
                            fontSize: 8,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(22, 0, 0, 8),
                            width: 50,
                            height: 45.8,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'assets/images/pngimg_3.png',
                                ),
                              ),
                            ),
                            child: Container(
                              width: 50,
                              height: 47.9,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 20, 46.9),
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xFFCCCCCC)),
                              borderRadius: BorderRadius.circular(2),
                              color: Color(0xFFFFFFFF),
                            ),
                            child: Container(
                              width: 8,
                              height: 8,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 68.5,
                        decoration: BoxDecoration(
                          color: Color(0xFF68BB59),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          'Cucumber',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont(
                            'Roboto',
                            fontWeight: FontWeight.w500,
                            fontSize: 8,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 40.0,
            margin: EdgeInsets.fromLTRB(22.5, 22.5, 22.5, 15),
            width: double.infinity,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF68BB59),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0.1, 0),
                child: /*Text(
                  'SUBMIT',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.getFont(
                    'Roboto',
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Color(0xFFFFFFFF),
                  ),
                ),*/
                TextButton(onPressed: () {
                  print('Address');
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Address()));
                }, child: Text(
                  'SUBMIT',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.getFont(
                    'Roboto',
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Color(0xFFFFFFFF),
                  ),
                ),

                )
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(23, 0, 22, 50),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
              ),
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 13),
                      child: Text(
                        'Want to find the location?',
                        style: GoogleFonts.getFont(
                          'Roboto',
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(100, 10, 100, 10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF68BB59),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(12, 12, 12.8, 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(15, 1, 3, 3),
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                        'assets/images/pin_11.png',
                                      ),
                                    ),
                                  ),
                                  child: Container(
                                    width: 8,
                                    height: 8,
                                  ),
                                ),
                              ),
                              Text(
                                'FIND LOCATION',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.getFont(
                                  'Roboto',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10,
                                  color: Color(0xFFFFFFFF),
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

        ],
      ),
    );
  }
}
