import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/presentation/resources/warna.dart';
import 'package:flutter_application_1/presentation/widgets/formcuxtom.dart';

class TambhIzin extends StatefulWidget {
  const TambhIzin({Key? key}) : super(key: key);

  @override
  State<TambhIzin> createState() => _TambhIzinState();
}

class _TambhIzinState extends State<TambhIzin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.abc),
        backgroundColor: Warna.warnahhijauh2,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 45),
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
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Title(
                  child: Text(
                    "Agustus 2022",
                    style: TextStyle(
                      color: Warna.warnahhijauh2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  color: Warna.warnahijau2,
                ),
                IconButton(
                    icon: Icon(Icons.keyboard_arrow_down),
                    color: Warna.warnahijau2,
                    onPressed: () {}),

                // FormCustom(text: "Jenis Izin"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
