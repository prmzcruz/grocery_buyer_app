import 'dart:convert';
import 'package:buyer_app/Modelclass/Category.dart';
import 'package:buyer_app/Utility/CommonColor.dart';
import 'package:buyer_app/userinterfacebloc/home/homebloc.dart';
import 'package:buyer_app/userinterfacebloc/home/homeevnet.dart';
import 'package:buyer_app/userinterfacebloc/home/homestate.dart';
import 'package:buyer_app/utility/Colors.dart';
import 'package:buyer_app/utility/URL.dart';
import 'package:buyer_app/utility/Utility.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';


class HomePagebloc extends StatefulWidget {
  const HomePagebloc({super.key});

  @override
  State<HomePagebloc> createState() => _HomePageblocState();
}

class _HomePageblocState extends State<HomePagebloc> {
  final List<String> imgList = [
    'assets/images/istockphoto_1089759056612_x_6121.jpeg',
    'assets/images/istockphoto_1089759056612_x_6121.jpeg',
    'assets/images/istockphoto_1089759056612_x_6121.jpeg',
    'assets/images/istockphoto_1089759056612_x_6121.jpeg',
  ];



  int _current = 0;
  Utility utility = Utility();
  String? _token;

  @override
  void initState() {
    super.initState();
    utility.GetUserdata().then((_) {
      _token = utility.token;
      context.read<CategoryBloc>().add(FetchCategories(token: _token!)); // Pass token to the event
    });
  }

  Map<String, String> categoryImageMap = {
    'பழங்கள்': 'fruits.jpg',
    'காய்கறி மற்றும் கீரை வகைகள்': 'vegetables.png',
    'உணவு வகைகள்': 'foods.jpg',
    'துணி வகைகள்': 'dress.jpg',
    'பால் சார்ந்த பொருட்கள்': 'milk.jpeg',
    'மீன்கள் மற்றும் நண்டு': 'fish.webp',
    'பூக்கள்': 'flowers.jpg',
    'மளிகை பொருட்கள்': 'grocessry.jpg',
    'போக்குவரத்து சார்ந்தவை': 'transport.jpg',
    'பொம்மைகள்': 'toys.jpg',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(backgroundColor: Colors.white),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        centerTitle: true,
        title: Text(
          "HOME",
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
      body: BlocBuilder<CategoryBloc, CategoryState>(
        builder: (context, state) {
          if (state is CategoryLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is CategoryError) {
            return Center(child: Text('Error: ${state.error}'));
          } else if (state is CategoryLoaded) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 180.0,
                    child: CarouselSlider(
                      items: imgList
                          .map((item) => Container(
                        margin: EdgeInsets.all(5.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          child: Image.asset(item,
                              fit: BoxFit.cover, width: 1000.0),
                        ),
                      ))
                          .toList(),
                      options: CarouselOptions(
                        autoPlay: true,
                        aspectRatio: 2.0,
                        enlargeCenterPage: true,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _current = index;
                          });
                        },
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imgList.asMap().entries.map((entry) {
                      return GestureDetector(
                        child: Container(
                          width: 8.0,
                          height: 8.0,
                          margin: const EdgeInsets.symmetric(
                              vertical: 2.0, horizontal: 4.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: (Theme.of(context).brightness == Brightness.dark
                                ? Colors.white
                                : Colors.black)
                                .withOpacity(_current == entry.key ? 0.9 : 0.4),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'OUR CATEGORIES',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: HexColor(Colorscommon.black)),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: state.categories.length,
                      itemBuilder: (context, index) {
                        var category = state.categories[index];
                        return Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                          width: 180,
                          child: Container(
                            decoration: BoxDecoration(
                              color: HexColor(Colorscommon.whitecolor),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                        'assets/images/${categoryImageMap[category.name]}', // Use mapped image name
                                      ),
                                    ),
                                  ),
                                  width: 154,
                                  height: 80,
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 7),
                                  child: Text(
                                    category.name,
                                    style: GoogleFonts.getFont(
                                      'Roboto',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: HexColor(Colorscommon.greenlite),
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(11.6, 0, 10.6, 7.5),
                                  child: Text(
                                    'Click the view all button to see all items',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.getFont(
                                      'Roboto',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 8,
                                      height: 1.5,
                                      color: HexColor(Colorscommon.black),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(3.5, 0, 0, 0),
                                  decoration: BoxDecoration(
                                    color: Color(0xFF68BB59),
                                    borderRadius: BorderRadius.circular(1),
                                  ),
                                  width: 80,
                                  height: 30,
                                  child: TextButton(
                                    onPressed: () {
                                      print(category.name);
                                      // Navigate to Category Details or another action
                                    },
                                    child: Text(
                                      'View All',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 8,
                                        height: 1.5,
                                        color: HexColor(Colorscommon.whitecolor),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          }
          return Container(); // Fallback for any other states
        },
      ),
    );
  }
}
