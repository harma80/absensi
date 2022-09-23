import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/resources/warna.dart';
import '../resources/gambar.dart';
import 'package:intl/intl.dart';

class CheckPage extends StatefulWidget {
  const CheckPage({Key? key}) : super(key: key);

  @override
  State<CheckPage> createState() => _CheckPageState();
}

class _CheckPageState extends State<CheckPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            child: Stack(
              children: [
                Container(
                    child: Image.asset(
                  Gambar.checkin,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.4,
                )),
                Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: Container(),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 75),
                  width: double.infinity,
                  padding: EdgeInsets.only(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Title(
                        color: Warna.putih,
                        child: Text(
                          (DateFormat('KK:mm').format(DateTime.now())),
                          style: TextStyle(
                            color: Warna.putih,
                            fontSize: 32,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Title(
                        color: Warna.hijau2,
                        child: Text(
                          (DateFormat('dd MMMM yyyy').format(DateTime.now())),
                          style: TextStyle(
                            color: Warna.putih,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 180),
                  width: double.infinity,
                  padding: EdgeInsets.all(25),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Warna.kuning,
                      padding: EdgeInsets.symmetric(vertical: 20),
                    ),
                    child: Text("Check In"),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
