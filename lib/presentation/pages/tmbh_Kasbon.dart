import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/widgets/formcuxtom.dart';
import 'package:intl/intl.dart';
import '../resources/warna.dart';

class TambhKasbon extends StatefulWidget {
  const TambhKasbon({Key? key}) : super(key: key);

  @override
  State<TambhKasbon> createState() => _TambhKasbonState();
}

class _TambhKasbonState extends State<TambhKasbon> {
  DateTime selectedDate = DateTime.now();
  bool isSelected = false;
  bool showDate = false;

  Future<DateTime> _selectDate(BuildContext context) async {
    final selected = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (selected != null && selected != selectedDate) {
      setState(() {
        selectedDate = selected;
      });
    }
    return selectedDate;
  }

  String getDate() {
    // ignore: unnecessary_null_comparison
    if (!isSelected) {
      return '';
    } else {
      return DateFormat('dd MMMM yyyy').format(selectedDate);
    }
  }

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
                  color: Warna.hijau2,
                ),
                IconButton(
                    icon: Icon(Icons.keyboard_arrow_down),
                    color: Warna.hijau2,
                    onPressed: () {}),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    child: Text(
                      "Jumlah",
                      textAlign: TextAlign.left,
                    ),
                  ),
                  FormCustom(
                    text: 'Rp.',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    child: Text(
                      "Tanggal",
                      textAlign: TextAlign.left,
                    ),
                  ),
                  FormCustom(
                    suffixicon: Icon(Icons.date_range),
                    text: 'Tanggal Kasbon',
                    readOnly: true,
                    onTap: () {
                      _selectDate(context);
                      showDate = true;
                      isSelected = true;
                    },
                    controller: TextEditingController(text: getDate()),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    child: Text(
                      "Keterangan",
                      textAlign: TextAlign.left,
                    ),
                  ),
                  FormCustom(
                    text: 'Keterangan',
                  ),
                ],
              ),
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
