import 'package:flutter/material.dart';
import '../resources/gambar.dart';
import '../resources/warna.dart';
import '../widgets/ItemPresensi.dart';

class DataPresensi extends StatelessWidget {
  const DataPresensi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                child: Image.asset(Gambar.home1),
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage(Gambar.logouin),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Harmayani",
                        style: TextStyle(
                          fontSize: 25,
                          color: Warna.putih,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Karyawan",
                      style: TextStyle(
                        fontSize: 15,
                        color: Warna.kuning,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          //margin: EdgeInsets.symmetric(horizontal: 30),
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Agustus 2022"),
              IconButton(
                  icon: Icon(Icons.keyboard_arrow_down),
                  color: Warna.hijau2,
                  onPressed: () {}),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 5),
          width: double.infinity,
          child: Column(children: [
            ItemPresensi(
              text1: 'Hadir',
              text2: '0 Hari',
            ),
            ItemPresensi(
              text1: 'Alpa',
              text2: '0 Hari',
            ),
            ItemPresensi(
              text1: 'Lembur',
              text2: '0 kali',
            ),
            ItemPresensi(
              text1: 'Sisa Cuti',
              text2: '0 Hari',
            ),
            ItemPresensi(
              text1: 'Gaji Bulan ini',
              text2: 'Rp.0',
            ),
          ]),
        ),
      ],
    );
  }
}
