import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/presentation/resources/warna.dart';

class Izin extends StatefulWidget {
  const Izin({Key? key}) : super(key: key);

  @override
  State<Izin> createState() => _IzinState();
}

class _IzinState extends State<Izin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.abc),
        backgroundColor: Warna.warnahhijauh2,
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
          "Pengajuan Izin",
          style: TextStyle(
              fontSize: 18,
              color: Warna.warnahputihc,
              fontWeight: FontWeight.w700),
        ),
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
