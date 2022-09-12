import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/presentation/resources/warna.dart';
import 'package:hexcolor/hexcolor.dart';

class Berhasil extends StatefulWidget {
  const Berhasil({Key? key}) : super(key: key);

  @override
  State<Berhasil> createState() => _BerhasilState();
}

class _BerhasilState extends State<Berhasil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(
              Icons.done,
              color: Warna.warnahhijauh2,
              size: 50.0,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Presensi Berhasil",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 24,
                color: Warna.warnahhtam,
              ),
            ),
            SizedBox(
              height: 300,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: HexColor("#019267"),
                  padding: EdgeInsets.symmetric(vertical: 20),
                ),
                child: Text("Masuk"),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
