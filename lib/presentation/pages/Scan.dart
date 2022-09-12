import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/presentation/pages/Izin.dart';
import 'package:flutter_application_1/presentation/resources/warna.dart';

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
              color: Warna.warnahijau2,
            ),
          ),
          Icon(
            Icons.fullscreen,
            color: Warna.warnahhijauh2,
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
                color: Warna.warnahhijauh2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
