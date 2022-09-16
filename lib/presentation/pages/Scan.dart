import 'package:flutter/material.dart';
import 'Izin.dart';
import '../resources/warna.dart';

class Csan extends StatefulWidget {
  const Csan({Key? key}) : super(key: key);

  @override
  State<Csan> createState() => _CsanState();
}

class _CsanState extends State<Csan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Scan",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Warna.hijau2,
            ),
          ),
          Icon(
            Icons.fullscreen,
            color: Warna.hijau2,
            size: 500.0,
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Izin()),
              );
            },
            child: Text(
              "Daftar",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: Warna.hijau2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
