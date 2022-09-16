import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/presentation/resources/warna.dart';

class Kasbon extends StatefulWidget {
  const Kasbon({Key? key}) : super(key: key);

  @override
  State<Kasbon> createState() => _KasbonState();
}

class _KasbonState extends State<Kasbon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                    color: Warna.warnahijau2),
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
              height: 160,
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
                      Text(
                        "Pengajuan Kasbon",
                        style: TextStyle(
                            backgroundColor: Warna.warnahhijauh2,
                            fontSize: 15,
                            color: Warna.warnahhtam),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Belum Disetujui",
                          style: TextStyle(
                            backgroundColor: Warna.warnahmrah,
                            fontSize: 15,
                            color: Warna.warnahhtam,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        "Minggu 07 Agustus 2022",
                        style: TextStyle(
                          fontSize: 14,
                          color: Warna.warnahhtam,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.monetization_on,
                        color: Warna.warnahhijauh2,
                        size: 20.0,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Rp.500.000",
                        style: TextStyle(
                          fontSize: 15,
                          color: Warna.warnaabuabu,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Row(
                    children: [
                      Text(
                        "Biaya",
                        style: TextStyle(
                          fontSize: 15,
                          color: Warna.warnahhtam,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "Pulang Kampung",
                        style: TextStyle(
                          fontSize: 15,
                          color: Warna.warnaabuabu,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(vertical: 20),
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 160,
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
                      Text(
                        "Pengajuan Kasbon",
                        style: TextStyle(
                            backgroundColor: Warna.warnahhijauh2,
                            fontSize: 15,
                            color: Warna.warnahhtam),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Disetujui",
                          style: TextStyle(
                            backgroundColor: Warna.warnahhjau,
                            fontSize: 15,
                            color: Warna.warnahhtam,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        "Minggu 07 Agustus 2022",
                        style: TextStyle(
                          fontSize: 14,
                          color: Warna.warnahhtam,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.monetization_on,
                        color: Warna.warnahhijauh2,
                        size: 20.0,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Rp.500.000",
                        style: TextStyle(
                          fontSize: 15,
                          color: Warna.warnaabuabu,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Row(
                    children: [
                      Text(
                        "Biaya",
                        style: TextStyle(
                          fontSize: 15,
                          color: Warna.warnahhtam,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "Pulang Kampung",
                        style: TextStyle(
                          fontSize: 15,
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
