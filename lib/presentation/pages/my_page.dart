import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/pages/data_presensi.dart';
import 'package:flutter_application_1/presentation/pages/login.dart';
import 'package:flutter_application_1/presentation/pages/regis.dart';
import 'package:flutter_application_1/presentation/resources/gambar.dart';
import 'package:flutter_application_1/presentation/resources/warna.dart';
import 'package:hexcolor/hexcolor.dart';
import '../resources/warna.dart';

class MyPages extends StatefulWidget {
  const MyPages({Key? key}) : super(key: key);

  @override
  MyPagesState createState() => MyPagesState();
}

class MyPagesState extends State<MyPages> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    DataPresensi(),
    Login(),
    Regis(),
    Center(
      child: Text('data'),
    )
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Warna.warnahijau2,
        child: Icon(Icons.qr_code_scanner),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: IconThemeData(color: Warna.warnahijau2),
        unselectedIconTheme: IconThemeData(
          color: Warna.warnahijau2,
          size: 24,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.wysiwyg,
            ),
            label: 'Data Presensi',
            //backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timer),
            label: 'Lembur',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on),
            label: 'Kasbon',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_add),
            label: 'Izin',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Warna.warnahijau2,
        onTap: _onItemTapped,
      ),
    );
  }
}
