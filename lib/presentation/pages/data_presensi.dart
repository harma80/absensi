import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/pages/Profil.dart';
import 'package:intl/intl.dart';
// import 'package:month_picker_dialog/month_picker_dialog.dart';
import '../resources/gambar.dart';
import '../resources/warna.dart';
import '../widgets/ItemPresensi.dart';
// import 'package:month_year_picker/month_year_picker.dart';

class DataPresensi extends StatefulWidget {
  const DataPresensi({Key? key}) : super(key: key);

  @override
  State<DataPresensi> createState() => _DataPresensiState();
}

class _DataPresensiState extends State<DataPresensi> {
  DateTime selectedPeriod = DateTime.now();
  bool show = false;

  Future<DateTime> _selectPeriod(BuildContext context) async {
    final selected = await showDatePicker(
        context: context,
        initialDate: selectedPeriod,
        firstDate: DateTime(2000),
        lastDate: DateTime(2025));
    if (selected != null && selected != selectedPeriod) {
      setState(() {
        selectedPeriod = selected;
      });
    }
    return selectedPeriod;
  }

  Future<void> doSomeAsyncStuff() async {}

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
                      height: 8,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Profil()));
                      },
                      child: Text(
                        "Harmayani",
                        style: TextStyle(
                          fontSize: 25,
                          color: Warna.putih,
                        ),
                      ),
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
              Text(
                DateFormat('MMMM yyyy').format(selectedPeriod),
                style:
                    TextStyle(color: Warna.hijau2, fontWeight: FontWeight.bold),
              ),
              IconButton(
                  icon: Icon(Icons.keyboard_arrow_down),
                  color: Warna.hijau2,
                  onPressed: () {
                    _selectPeriod(context);
                    show = true;
                  }),
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
