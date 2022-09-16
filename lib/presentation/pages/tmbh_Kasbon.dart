import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/presentation/resources/warna.dart';
import 'package:flutter_application_1/presentation/widgets/FTextfield.dart';

class TambhKasbon extends StatefulWidget {
  const TambhKasbon({Key? key}) : super(key: key);

  @override
  State<TambhKasbon> createState() => _TambhKasbonState();
}

class _TambhKasbonState extends State<TambhKasbon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          "Pengajuan Kasbon",
          style: TextStyle(
              fontSize: 18,
              color: Warna.warnahputihc,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: Column(
          children: [
            FTextfield(
              icon: Icons.keyboard_arrow_down,
              text: 'Jenis Izin',
              placeholder: "Cuti/ Izin",
            ),
            SizedBox(
              height: 30,
            ),
            FTextfield(
              icon: Icons.date_range,
              text: 'Tanggal Izin',
              placeholder: "Tanggal",
            ),
            SizedBox(
              height: 30,
            ),
            FTextfield(
              icon: Icons.keyboard_arrow_down,
              text: 'Keterangan',
              placeholder: "Keterangan",
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              padding: EdgeInsets.all(3),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Warna.warnahijau2,
                  padding: EdgeInsets.symmetric(vertical: 20),
                ),
                child: Text("Kirim"),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
