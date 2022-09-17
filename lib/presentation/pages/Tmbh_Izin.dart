// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/widgets/formcuxtom.dart';
import '../resources/warna.dart';
import 'package:intl/intl.dart';

class TambhIzin extends StatefulWidget {
  const TambhIzin({Key? key}) : super(key: key);

  @override
  State<TambhIzin> createState() => _TambhIzinState();
}

class _TambhIzinState extends State<TambhIzin> {
  int _counter = 0;
  String? dropDownValue;
  List<String> citylist = [
    'Izin',
    'Cuti',
  ];

  DateTime selectedDate = DateTime.now();
  bool isSelected = false;
  bool showDate = false;
  DateTime selectedDate1 = DateTime.now();
  bool isSelected1 = false;

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

  Future<DateTime> _selectDate1(BuildContext context) async {
    final selected = await showDatePicker(
      context: context,
      initialDate: selectedDate1,
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (selected != null && selected != selectedDate1) {
      setState(() {
        selectedDate1 = selected;
      });
    }
    return selectedDate1;
  }

  String getDate() {
    // ignore: unnecessary_null_comparison
    if (!isSelected) {
      return '';
    } else {
      return DateFormat('dd MMMM yyyy').format(selectedDate);
    }
  }

  String getDate1() {
    // ignore: unnecessary_null_comparison
    if (!isSelected1) {
      return '';
    } else {
      return DateFormat('dd MMMM yyyy').format(selectedDate1);
    }
  }

  @override
  void inistate() {
    setFilters();
    //super.initState();
  }

  setFilters() {
    setState(() {
      dropDownValue = citylist[1];
    });
  }

  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.abc),
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
                      "Izin",
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Column(
                      children: <Widget>[
                        DropdownButtonFormField(
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Warna.hijau2,
                                  width: 1.0,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Warna.hijau2,
                                  width: 1.0,
                                ),
                              ),
                              filled: true,
                              hintStyle: TextStyle(color: Warna.abuabu),
                              hintText: "Izin / Cuti",
                              fillColor: Warna.putih),
                          value: dropDownValue,
                          // ignore: non_constant_identifier_names
                          onChanged: (String? Value) {
                            setState(() {
                              dropDownValue = Value ?? "";
                            });
                          },
                          items: citylist
                              .map((cityTitle) => DropdownMenuItem(
                                  value: cityTitle, child: Text(cityTitle)))
                              .toList(),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          child: Text(
                            "Mulai Tanggal Izin",
                            textAlign: TextAlign.left,
                          ),
                        ),
                        FormCustom(
                          suffixicon: Icon(Icons.date_range),
                          text: 'Mulai Tanggal Izin',
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
                    height: 2,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          child: Text(
                            "Sampai Tanggal Izin",
                            textAlign: TextAlign.left,
                          ),
                        ),
                        FormCustom(
                          suffixicon: Icon(Icons.date_range),
                          text: 'Sampai Tanggal Izin',
                          readOnly: true,
                          onTap: () {
                            _selectDate1(context);
                            showDate = true;
                            isSelected1 = true;
                          },
                          controller: TextEditingController(text: getDate1()),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 2,
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
                        FormCustom(text: 'Keterangan')
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  FormCustom(
                    text: 'Foto',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
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
