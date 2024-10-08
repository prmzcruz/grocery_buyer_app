import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Colors.dart';
import 'CommonColor.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'URL.dart';

class Utility {
  DateTime Today = DateTime.now();
  String currentDate = DateFormat('yyyy-MM-dd').format(DateTime.now());
  String currentMonth = DateFormat('MM').format(DateTime.now());
  String currentYear = DateFormat('yyyy').format(DateTime.now());
  String currentDateformat = DateFormat('dd-MM-yyyy').format(DateTime.now());

  DateTime selectedDate = DateTime.now();

  String? journey_text,
      empname,
      username,
      password,
      passbase64,
      fingerpass,
      Loginbool,
      employeeid,
      changed_typevalue,
      selecttypevalue,
      idvisittype,
      filedofficertype,
      trackattendance;

  String? mobileno,
      emp_image,
      designation,
      band,
      id_level,
      headquarters,
      reporting_to;
  String? label1type, label2type, label3type, label4type, label5type,
      label6type, label7type, label8type, label9type, label10type, label11type,
      label12type, label13type, label14type, label15type;
  String? company_id, latlong_minutes;
  late String company_logo;
  String? todayCount,
      mtdCount,
      overallCount,
      approvedclaimCount,
      pendingclaimCount,
      startjourney_time,
      claim_parentId,
      claim_type,
      typeName,
      fromdate,
      fromdatesend,
      todate,
      todatesend;
  bool fingerValue = false;
  bool timerbool = false;
  String? claimbill_edit,
      id_claimDetails,
      id_employee,
      claim_date,
      allowance_type,
      id_travelallowance,
      id_otherallowance,
      amount,
      limit_amount,
      bill,
      description,
      type,
      id_mode,
      modeName,
      otherAlowanceId,
      otherAlowanceName,
      modeNameotherAlowanceName,
      displayclaimdate;
  bool attendanceBool = false;
  bool newuser = false;

  GetUserdata() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();


    void fluttertoast(text) {
      Fluttertoast.showToast(
        msg: text,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
      );
    }


    void showLoader(BuildContext context) {
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            context = context;
            return WillPopScope(
              onWillPop: () async {
                return false;
              },
              child: Dialog(
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      /*Image.asset(
                      'assets/loader.gif',
                      width: 50,
                    ),*/
                      const CircularProgressIndicator(
                        strokeWidth: 3,
                        valueColor:
                        AlwaysStoppedAnimation<Color>(Colors.pinkAccent),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 10),
                          child: const Text("Loading")),
                    ],
                  ),
                ),
              ),
            ); //const SpinKitWave(color: Colors.greenAccent,size: 40,
            // );
          });
    }

    void closeLoader(BuildContext context) {
      Navigator.of(context, rootNavigator: true).pop();
    }


    String date_postformat(String inputdate) {
      if (inputdate.length > 4) {
        var inputFormat = DateFormat("yyyy-MM-dd");

        var inputDate = inputFormat.parse(inputdate); // <-- dd/MM 24H format

        var outputFormat = DateFormat('yyyy-MM-dd');
        var outputDate = outputFormat.format(inputDate);

        return outputDate;
      }
      return "-";
    }

    String date_postformat1(String inputdate) {
      if (inputdate.length > 4) {
        var inputFormat = DateFormat("yyyy-MM-dd");

        var inputDate = inputFormat.parse(inputdate); // <-- dd/MM 24H format

        var outputFormat = DateFormat('dd-MM-yyyy');
        var outputDate = outputFormat.format(inputDate);

        return outputDate;
      }
      return "-";
    }

    String DateConvertINDIA(String inputdate) {
      if (inputdate.length > 4) {
        var inputFormat = DateFormat("yyyy-MM-dd");

        var inputDate = inputFormat.parse(inputdate); // <-- dd/MM 24H format

        var outputFormat = DateFormat('dd/MM/yyyy');
        var outputDate = outputFormat.format(inputDate);

        return outputDate;
      }
      return "-";
    }

    String DateConvert1(String inputdate) {
      var inputFormat = DateFormat("yyyy-MM-dd HH:mm:ss");

      var inputDate = inputFormat.parse(inputdate); // <-- dd/MM 24H format

      var outputFormat = DateFormat('yyyy-MM-dd');
      var outputDate = outputFormat.format(inputDate);
      return outputDate;
    }

    Future<String> SelectPrevDate(BuildContext context, DateTime? minimumdate,
        String? vaildatestr) async {
      DateTime maximumdate = DateTime.now();
      print(vaildatestr);
      if (vaildatestr == "Failure") {
        maximumdate = Today;
        minimumdate = DateTime(2000);
      } else if (minimumdate == null) {
        minimumdate = DateTime(2000);
      } else {}
      final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        // Refer step 1
        firstDate: minimumdate,
        lastDate: maximumdate,

        builder: (BuildContext context, Widget? child) {
          return Theme(
            data: ThemeData.light().copyWith(
              colorScheme: ColorScheme.light(
                primary: HexColor(Colorscommon.redcolor),
                // header background color
                onPrimary: Colors.white,
                // header text color
                onSurface: Colors.black, // body text color
              ),
            ),
            child: child!,
          );
        },
      );

      if (picked != null && picked != selectedDate) selectedDate = picked;

      return picked.toString();
    }

    DateTime seconddatevalidate(String inputdate) {
      var inputFormat = DateFormat("dd/mm/yyyy");

      var inputDate = inputFormat.parse(inputdate); // <-- dd/MM 24H format

      var outputFormat = DateFormat('yyyy');
      var outputDate = outputFormat.format(inputDate);
      var outputFormat1 = DateFormat('mm');
      var outputDate1 = outputFormat1.format(inputDate);
      var outputFormat2 = DateFormat('dd');
      var outputDate2 = outputFormat2.format(inputDate);
      var year = int.parse(outputDate);
      var month = int.parse(outputDate1);
      var day = int.parse(outputDate2);

      return DateTime(year, month, day);
    }

    Future<String> SelectDate(BuildContext context, DateTime? minimumdate,
        String? vaildatestr) async {
      DateTime maximumdate = DateTime(3000);
      // print(vaildatestr);
      if (vaildatestr == "Failure") {
        maximumdate = Today;
        minimumdate = DateTime(2000);
      } else if (minimumdate == null) {
        minimumdate = DateTime(2000);
      } else {}
      final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        // Refer step 1
        firstDate: minimumdate,
        lastDate: maximumdate,

        builder: (BuildContext? context, Widget? child) {
          return Theme(
            data: ThemeData.light().copyWith(
              colorScheme: ColorScheme.light(
                primary: HexColor(Colorscommon.redcolor),
                // header background color
                onPrimary: Colors.white,
                // header text color
                onSurface: Colors.black, // body text color
              ),
            ),
            child: child!,
          );
        },
      );

      if (picked != null && picked != selectedDate) selectedDate = picked;

      return picked.toString();
    }

    Future<String> FromToSelectDate(BuildContext context, DateTime? minimumdate,
        String? vaildatestr) async {
      DateTime maximumdate = Today;
      print('Today$Today');
      // print(vaildatestr);
      if (vaildatestr == "") {
        maximumdate = Today;
        minimumdate = DateTime(2023);
      } else if (vaildatestr == 'true') {
        maximumdate = Today;
        minimumdate = minimumdate;
      } else {
        minimumdate = DateTime(2023);
        maximumdate = Today;
      }
      final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: maximumdate,
        // Refer step 1
        firstDate: minimumdate!,
        lastDate: maximumdate,

        builder: (BuildContext? context, Widget? child) {
          return Theme(
            data: ThemeData.light().copyWith(
              colorScheme: ColorScheme.light(
                primary: HexColor(Colorscommon.redcolor),
                // header background color
                onPrimary: Colors.white,
                // header text color
                onSurface: Colors.black, // body text color
              ),
            ),
            child: child!,
          );
        },
      );

      if (picked != null && picked != selectedDate) selectedDate = picked;

      return picked.toString();
    }

    Future<String> ClaimSelectDate(BuildContext context,
        DateTime? Fromminimumdate,
        DateTime? Tomaximumdate,
        String? vaildatestr) async {
      DateTime tomaximumdate = DateTime(3000);
      DateTime initialdate = Today;
      // print(vaildatestr);
      if (vaildatestr == "sameday") {
        tomaximumdate = Fromminimumdate!;
        Fromminimumdate = Fromminimumdate;
        initialdate = Fromminimumdate;
      } else if (vaildatestr == 'overnight') {
        tomaximumdate = Tomaximumdate!;
        Fromminimumdate = Fromminimumdate!;
        initialdate = Fromminimumdate;
      } else if (vaildatestr == "") {
        Fromminimumdate = DateTime(2023);
        tomaximumdate = Today;
      }
      final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: initialdate,
        // Refer step 1
        firstDate: Fromminimumdate!,
        lastDate: tomaximumdate,

        builder: (BuildContext? context, Widget? child) {
          return Theme(
            data: ThemeData.light().copyWith(
              colorScheme: ColorScheme.light(
                primary: HexColor(Colorscommon.redcolor),
                // header background color
                onPrimary: Colors.white,
                // header text color
                onSurface: Colors.black, // body text color
              ),
            ),
            child: child!,
          );
        },
      );

      if (picked != null && picked != selectedDate) selectedDate = picked;

      return picked.toString();
    }

    saveJsonlabelData(jsonData) async {
      final prefs = await SharedPreferences.getInstance();
      var saveData = jsonEncode(jsonData);
      await prefs.setString('jsonData', saveData);
      // print("save label == $saveData");
    }

    getJsonlabelData() async {
      final prefs = await SharedPreferences.getInstance();
      var temp = prefs.getString('jsonData');
      List retrivejson = jsonDecode(temp!).toList();
      // print("retrivejson == ${retrivejson.toString()}");

      return retrivejson;
    }

    saveJsondropdownData(jsonData) async {
      final prefs = await SharedPreferences.getInstance();
      var saveData = jsonEncode(jsonData);
      await prefs.setString('dropdownjsonData', saveData);
      print("save dropdown == $saveData");
    }

    getJsondropdownData() async {
      final prefs = await SharedPreferences.getInstance();
      var temp = prefs.getString('dropdownjsonData');
      List retrivejson = jsonDecode(temp!).toList();
      print("retrivedropdownjson == ${retrivejson.toString()}");

      return retrivejson;
    }
    Future<String> SeelectDate(BuildContext context, DateTime? minimumdate,
        String? vaildatestr) async {
      DateTime maximumdate = DateTime(3000);
      print('vaildatestr$vaildatestr');
      if (vaildatestr == "Failure") {
        maximumdate = Today;
        minimumdate = DateTime(2000);
      } else if (minimumdate == null) {
        minimumdate = DateTime(2000);
      } else {}
      final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        // Refer step 1
        firstDate: minimumdate,
        lastDate: maximumdate,

        builder: (BuildContext? context, Widget? child) {
          return Theme(
            data: ThemeData.light().copyWith(
              colorScheme: ColorScheme.light(
                primary: HexColor(Colorscommon.redcolor),
                // header background color
                onPrimary: Colors.white,
                // header text color
                onSurface: Colors.black, // body text color
              ),
            ),
            child: child!,
          );
        },
      );

      if (picked != null && picked != selectedDate) selectedDate = picked;

      return picked.toString();
    }
    String DateConvertddmmmyyyy(String inputdate) {
      var inputFormat = DateFormat("yyyy-MM-dd HH:mm:ss");
      var inputDate = inputFormat.parse(inputdate); // <-- dd/MM 24H format
      var outputFormat = DateFormat('dd MMM yyyy');
      var outputDate = outputFormat.format(inputDate);
      return outputDate;
    }
    String DateConvert3(String inputdate) {
      var inputFormat = DateFormat("yyyy-MM-dd HH:mm:ss");
      var inputDate = inputFormat.parse(inputdate); // <-- dd/MM 24H format
      var outputFormat = DateFormat('yyyy-MM-dd');
      var outputDate = outputFormat.format(inputDate);
      return outputDate;
    }
  }
}
