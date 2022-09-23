import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/pages/Tmbh_Izin.dart';
import '../resources/warna.dart';

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
        backgroundColor: Warna.hijau2,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TambhIzin()));
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
              fontSize: 18, color: Warna.putih, fontWeight: FontWeight.w700),
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
                        color: Warna.hijau2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    color: Warna.hijau2),
                IconButton(
                    icon: Icon(Icons.keyboard_arrow_down),
                    color: Warna.hijau2,
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
                        "Pengajuan Lembur",
                        style: TextStyle(
                            backgroundColor: Warna.hijau2,
                            fontSize: 15,
                            color: Warna.htam),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Belum Disetujui",
                          style: TextStyle(
                            backgroundColor: Warna.mrah,
                            fontSize: 15,
                            color: Warna.htam,
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
                          color: Warna.htam,
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
                        Icons.date_range,
                        color: Warna.htam,
                        size: 20.0,
                      ),
                      Text(
                        "07 Agustus 2022 - 09 Agustus 2022",
                        style: TextStyle(
                          fontSize: 15,
                          color: Warna.abuabu,
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
                        "Izin Cuti",
                        style: TextStyle(
                          fontSize: 15,
                          color: Warna.htam,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "Pulang Kampung",
                        style: TextStyle(
                          fontSize: 15,
                          color: Warna.abuabu,
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
                        "Pengajuan Lembur",
                        style: TextStyle(
                            backgroundColor: Warna.hijau2,
                            fontSize: 15,
                            color: Warna.htam),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Disetujui",
                          style: TextStyle(
                            backgroundColor: Warna.hjau,
                            fontSize: 15,
                            color: Warna.htam,
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
                          color: Warna.htam,
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
                        Icons.date_range,
                        color: Warna.htam,
                        size: 20.0,
                      ),
                      Text(
                        "07 Agustus 2022 - 09 Agustus 2022",
                        style: TextStyle(
                          fontSize: 15,
                          color: Warna.abuabu,
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
                        "Izin Cuti",
                        style: TextStyle(
                          fontSize: 15,
                          color: Warna.htam,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "Pulang Kampung",
                        style: TextStyle(
                          fontSize: 15,
                          color: Warna.abuabu,
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
