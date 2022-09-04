import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class reusabletext extends StatelessWidget {
  Color ? color;
  final String text;
  double size;
  TextOverflow textOverflow;
  reusabletext({
          Key ? key,
          this.color = Colors.black,
          required this.text,
          required this.size,
          this.textOverflow = TextOverflow.ellipsis
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: textOverflow,
      style: GoogleFonts.roboto(
        color: color,
        fontWeight: FontWeight.w400,
        fontSize: size,
      ),
    );
  }
}

class reusablesmalltext extends StatelessWidget {
  Color ? color;
  final String text;
  double size;
  TextOverflow textOverflow;
  reusablesmalltext({
    Key ? key,
    this.color = Colors.grey,
    required this.text,
    required this.size,
    this.textOverflow = TextOverflow.ellipsis
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: textOverflow,
      style: GoogleFonts.roboto(
        color: color,
        fontWeight: FontWeight.w400,
        fontSize: size,
      ),
    );
  }
}
