import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/widgets/formcuxtom.dart';

import '../resources/warna.dart';

class Regis extends StatefulWidget {
  const Regis({Key? key}) : super(key: key);

  @override
  State<Regis> createState() => RegisState();
}

class RegisState extends State<Regis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 35),
              width: double.infinity,
              child: Text(
                "Registrasi",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 24, color: Warna.warnahAbuTr),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            FormCustom(text: "Nama"),
            FormCustom(text: "Alamat"),
            FormCustom(text: "No Hp"),
            FormCustom(text: "No Rekening"),
            FormCustom(text: "Email"),
            FormCustom(text: "Password"),
            SizedBox(
              height: 20,
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
                child: Text("Masuk"),
                onPressed: () {},
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Sudah Punya Akun ?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Warna.warnaabuabu,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Login",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Warna.warnahijau2,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
