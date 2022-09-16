import 'package:flutter/material.dart';
import '../resources/warna.dart';

class FormCustom extends StatelessWidget {
  final String text;
  final Icon? prefixicon;
  final Icon? suffixicon;
  const FormCustom({Key? key, required this.text, this.prefixicon,this.suffixicon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: TextField(
          decoration: InputDecoration(
              prefixIcon: null ?? this.prefixicon,
              suffixIcon: null ?? this.suffixicon,
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
              hintText: this.text,
              hintStyle: TextStyle(color: Color.fromRGBO(158, 163, 155, 0.5))),
        ));
  }
}
