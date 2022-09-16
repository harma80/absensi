import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/pages/Lembur.dart';
import 'package:flutter_application_1/presentation/pages/regis.dart';
import '../resources/warna.dart';
import 'package:hexcolor/hexcolor.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30),
              width: double.infinity,
              height: 100,
              child: Image.asset("assets/logo.png"),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Welcome",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 24,
                  color: Warna.warnahAbuTr,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    child: Text(
                      "Email",
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email, color: Warna.warnahAbuTr),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Warna.warnahijau2,
                            width: 1.0,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Warna.warnahijau2,
                            width: 1.0,
                          ),
                        ),
                        hintText: "Enter your email",
                        hintStyle: TextStyle(
                            color: Color.fromRGBO(158, 163, 155, 0.5))),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    child: Text(
                      "Password",
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock, color: Warna.warnahAbuTr),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: HexColor("#019267"),
                            width: 1.0,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: HexColor("#019267"),
                            width: 1.0,
                          ),
                        ),
                        hintText: "Enter your email",
                        hintStyle: TextStyle(
                            color: Color.fromRGBO(158, 163, 155, 0.5))),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.centerRight,
              child: TextButton(
                child: Text("Lupa Password ?"),
                style: TextButton.styleFrom(
                  primary: HexColor("#019267"),
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(height: 20),
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
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Tidak Punya Akun ?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: HexColor('#C3C6C2'),
                    ),
                  ),
                  TextButton(
                    //untuk tombol kembali di lembur
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Regis()),
                      );
                    },
                    child: Text(
                      "Daftar",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: HexColor('#019267'),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
