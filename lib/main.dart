import 'package:flutter/material.dart';
//import 'package:flutter_application_1/presentation/pages/Izin.dart';
//import 'package:flutter_application_1/presentation/pages/Lembur.dart';
//import 'package:flutter_application_1/presentation/pages/Scan.dart';
import 'package:flutter_application_1/presentation/pages/Tmbh_Izin.dart';
//import 'package:flutter_application_1/presentation/pages/login.dart';
//import 'package:flutter_application_1/presentation/pages/tmpl_brhsil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TambhIzin(),
      //debugShowCheckedModeBanner: false,
    );
  }
}
