import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/resources/gambar.dart';

class CheckPage extends StatefulWidget {
  const CheckPage({Key? key}) : super(key: key);

  @override
  State<CheckPage> createState() => _CheckPageState();
}

class _CheckPageState extends State<CheckPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            child: Stack(
              children: [
                Container(
                    child: Image.asset(
                  Gambar.checkin,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.4,
                )),
                Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: Container(),
                ),
                Text(DateTime.now().toString())
              ],
            ),
          ),
        ],
      ),
    );
  }
}
