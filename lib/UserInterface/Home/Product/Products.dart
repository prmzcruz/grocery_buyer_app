import 'dart:convert';
import 'package:buyer_app/Modelclass/productList.dart';
import 'package:buyer_app/UserInterface/Home/Product/Address.dart';
import 'package:buyer_app/Utility/CommonColor.dart';
import 'package:buyer_app/utility/Colors.dart';
import 'package:buyer_app/utility/URL.dart';
import 'package:buyer_app/utility/Utility.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class Products extends StatefulWidget {
  final int id;
  final String name;
  const Products({super.key, required this.id, required this.name});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  bool ischecked = true;
  Utility utility = Utility();
  String? _token;
  List<Product> product = [];
  List productname = [];
  var products;
  List<Product> filteredProducts = [];
  String? imageURL;
  bool _isLoading = true;
  List<bool> isCheckedList = [];


  @override
  void initState() {
    super.initState();
    utility.GetUserdata().then((_) {
      _token = utility.token;
      print('_token$_token');
      imageURL = CommonURL.ImageURL;

      print('imageURL${imageURL}');
      print('widgetid${widget.id}');
      _productAPI();
    });
  }

  Future<void> _productAPI() async {
    try {
      utility.showLoader(context);
      String url = CommonURL.URL + CommonURL.products;
      final response = await http.get(
        Uri.parse(url),
        headers: {
          'Authorization': 'Bearer $_token',
        },
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        utility.closeLoader(context);
        var jsonData = jsonDecode(response.body);
        print('Data: $jsonData');
        product = (jsonData as List)
            .map((data) => Product.fromJson(data))
            .toList();

        filteredProducts = product
            .where((product) => product.categoryId == widget.id)
            .toList();

        for (products in filteredProducts) {
          print('Category: ${products.name}, Active: ${products.active} ');
        }
        setState(() {
          isCheckedList = List.filled(filteredProducts.length, false);
        });
      }
    } catch (e) {
      print(e);
    } finally {
      setState(() {
        _isLoading = false; // Set loading to false after API call completes
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors
              .white,
        ),
        centerTitle: true,
        title: Text(
          widget.name,
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
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(22.5, 22.5, 22.5, 15),
              width: double.infinity,
              child: Container(
                decoration: BoxDecoration(
                  color: HexColor(Colorscommon.greenlite),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Container(
                  padding: const EdgeInsets.fromLTRB(0, 9, 0.1, 10),
                  child: Center(
                    child: Text(
                      'கிடைக்கும் ${widget.name}',
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
              margin: EdgeInsets.fromLTRB(24, 10, 22, 16),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(9, 0, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                        child: Image.asset(
                          'assets/images/loupe_1.png',
                          width: 18,
                          height: 18,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search...',
                            hintStyle: TextStyle(
                              fontSize: 14,
                              color: Colors.black.withOpacity(0.5), // Hint color
                            ),
                            border: InputBorder.none, // Remove the underline
                          ),
                          style: TextStyle(
                            fontSize: 14, // Text size inside the search box
                            color: Colors.black, // Change text color
                          ),
                          onChanged: (value) {
                            setState(() {
                              filteredProducts = product
                                  .where((prod) =>
                              prod.categoryId == widget.id &&
                                  prod.name.toLowerCase().contains(value.toLowerCase()))
                                  .toList();
                            });
                          },
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
                        '${filteredProducts.length} items',
                        style: GoogleFonts.getFont(
                          'Roboto',
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ),
                  ),
                  /*Row(
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
                  ),*/
                ],
              ),
            ),
            Container(
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 2.0,
                ),
                itemCount: filteredProducts.length, // Use the length of filteredProducts
                itemBuilder: (context, index) {
                  final productItem = filteredProducts[index]; // Use a more descriptive variable name
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4), // Adjust margin
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center, // Center items vertically
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
                                  image: NetworkImage(
                                    '$imageURL${productItem.imageName}', // Update to use productItem
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Transform.scale(
                                  scale: 0.6,
                                  child: Checkbox(
                                    value: isCheckedList[index],
                                    onChanged: (bool? value) {
                                      setState(() {
                                        isCheckedList[index] = value ?? false;
                                      });
                                    },
                                    checkColor: Colors.white,
                                    activeColor: Color(0xFF68BB59),
                                    side: BorderSide(
                                      color: Color(0xFF68BB59),
                                      width: 1.0,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            /*Checkbox(
                              value: ischecked, // Control the state of the checkbox
                              onChanged: (bool? value) {
                                setState(() {
                                  ischecked = value ?? false; // Update state on checkbox change
                                });
                              },
                            ),*/
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
                            productItem.name, // Update to use productItem
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 10, // Increased font size for better readability
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
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
                            color: const Color(0xFF000000),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(100, 10, 100, 10),
                        decoration: BoxDecoration(
                          color: Color(0xFF68BB59),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        padding: EdgeInsets.fromLTRB(12, 12, 10, 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(15, 1, 3, 3),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'assets/images/pin_11.png',
                                  ),
                                ),
                              ),
                              width: 8,
                              height: 8,
                            ),
                            Expanded(
                              child: Text(
                                'FIND LOCATION',
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.getFont(
                                  'Roboto',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10,
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
              ),
            ),
            // Other widgets like Submit Button and Location Finder...
          ],
        ),
      ),
    );
  }
}
