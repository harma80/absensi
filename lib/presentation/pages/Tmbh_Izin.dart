import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/resources/warna.dart';
import 'package:flutter_application_1/presentation/widgets/FTextfield.dart';

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
              ],
            ),
            Container(
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
                  FTextfield(
                    icon: Icons.keyboard_arrow_down,
                    text: 'Foto',
                    placeholder: "Keterangan",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
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
