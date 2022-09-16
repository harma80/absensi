import 'package:flutter/material.dart';
import 'data_presensi.dart';
import 'login.dart';
import 'regis.dart';
import '../resources/warna.dart';
import '../resources/warna.dart';

class MyPages extends StatefulWidget {
  const MyPages({Key? key}) : super(key: key);

  @override
  MyPagesState createState() => MyPagesState();
}

class MyPagesState extends State<MyPages> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
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
        backgroundColor: Warna.hijau2,
        child: Icon(Icons.qr_code_scanner),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: IconThemeData(color: Warna.hijau2),
        unselectedIconTheme: IconThemeData(
          color: Warna.hijau2,
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
        selectedItemColor: Warna.hijau2,
        onTap: _onItemTapped,
      ),
    );
  }
}
