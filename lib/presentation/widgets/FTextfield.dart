import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/resources/warna.dart';

class FTextfield extends StatelessWidget {
  final String text;
  final IconData icon;
  final String placeholder;

  const FTextfield({
    required this.text,
    required this.icon,
    required this.placeholder,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          child: Text(
            text,
            textAlign: TextAlign.left,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        TextField(
            decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(icon, color: Warna.warnahAbuTr),
                ),
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
                hintText: placeholder,
                hintStyle: TextStyle(
                  color: Warna.warnaabuabu,
                ))),
      ],
    );
  }
}
