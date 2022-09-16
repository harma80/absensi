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
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Title(
                  child: Text(
                    "Agustus 2022",
                    style: TextStyle(
                      color: Warna.warnahijau2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  color: Warna.warnahhijauh2,
                ),
                IconButton(
                    icon: Icon(Icons.keyboard_arrow_down),
                    color: Warna.warnahijau2,
                    onPressed: () {}),
              ],
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(vertical: 20),
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25), //border corner radius
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), //color of shadow
                    spreadRadius: 1, //spread radius
                    blurRadius: 7, // blur radius
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.date_range,
                        color: Warna.warnahhtam,
                        size: 20.0,
                      ),
                      Text(
                        "Minggu 07 Agustus 2022",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Warna.warnaabuabu,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(children: [
                    Text(
                      "Check In",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Warna.warnaabuabu,
                      ),
                    ),
                    SizedBox(
                      width: 38,
                    ),
                    Text(
                      "08:00",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Warna.warnaabuabu,
                      ),
                    ),
                  ]),
                  SizedBox(
                    height: 7,
                  ),
                  Row(
                    children: [
                      Text(
                        "Check out",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Warna.warnaabuabu,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "08:00",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Warna.warnaabuabu,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
