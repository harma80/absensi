import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/pages/my_page.dart';
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

  DateTime selectedDate2 = DateTime.now();
  bool isSelected2 = false;
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

  Future<DateTime> _selectDate2(BuildContext context) async {
    final selected = await showDatePicker(
      context: context,
      initialDate: selectedDate2,
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (selected != null && selected != selectedDate2) {
      setState(() {
        selectedDate2 = selected;
      });
    }
    return selectedDate2;
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
  Widget build(BuildContext context) {
    //
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.abc),
        backgroundColor: Warna.hijau2,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 45),
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
              fontSize: 18, color: Warna.putih, fontWeight: FontWeight.w700),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
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
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          child: Text(
                            "Foto",
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                              icon: Icon(Icons.add_a_photo),
                              iconSize: 50,
                              color: Warna.abuabu,
                              onPressed: () {}),
                        ),
                      ],
                    ),
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
