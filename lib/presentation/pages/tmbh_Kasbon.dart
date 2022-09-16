import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/widgets/formcuxtom.dart';
import '../resources/warna.dart';

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
        backgroundColor: Warna.hijau2,
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
              fontSize: 18, color: Warna.putih, fontWeight: FontWeight.w700),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: Column(
          children: [
            FormCustom(
              text: 'Jumlah',
            ),
            SizedBox(
              height: 30,
            ),
            FormCustom(
              suffixicon: Icon(Icons.date_range),
              text: 'Tanggal Izin',
            ),
            SizedBox(
              height: 30,
            ),
            FormCustom(
              text: 'Keterangan',
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
                  primary: Warna.hijau2,
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
