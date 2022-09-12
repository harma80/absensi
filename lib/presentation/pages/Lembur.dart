import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/resources/warna.dart';

class Lembur extends StatefulWidget {
  const Lembur({Key? key}) : super(key: key);

  @override
  State<Lembur> createState() => _LemburState();
}

class _LemburState extends State<Lembur> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.abc),
        backgroundColor: Warna.warnahijau2,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.add,
                size: 30,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
        ],

        title: Text(
          "Lembur",
          style: TextStyle(
              fontSize: 18,
              color: Warna.warnahputihc,
              fontWeight: FontWeight.w700),
        ),
        // flexibleSpace: Positioned(
        //   bottom: 0,
        //   right: 0,
        //   child: Container(
        //     margin: EdgeInsets.only(top: 70),
        //     padding: EdgeInsets.symmetric(horizontal: 20),
        //     child:
        //   ),
        // ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Title(child: Text("Agustus 2022"), color: Warna.warnahijau2),
            IconButton(
                icon: Icon(Icons.keyboard_arrow_down),
                color: Warna.warnahijau2,
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
