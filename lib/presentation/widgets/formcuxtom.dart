import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/resources/warna.dart';

class FormCustom extends StatelessWidget {
  final String text;
  final Icon? icon;
  const FormCustom({Key? key, required this.text, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: TextField(
          decoration: InputDecoration(
              prefixIcon: null ?? this.icon,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Warna.warnahijau2,
                  width: 1.0,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Warna.warnahijau2,
                  width: 1.0,
                ),
              ),
              hintText: this.text,
              hintStyle: TextStyle(color: Color.fromRGBO(158, 163, 155, 0.5))),
        ));
  }
}
