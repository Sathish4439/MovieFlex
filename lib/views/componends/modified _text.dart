import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ModifiedText extends StatelessWidget {
  final Color? color;
  final String text;
  final double? size;
  const ModifiedText({Key? key, this.color, this.size, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.breeSerif(
        color: Colors.white,
        fontSize: size,
        fontWeight: FontWeight.bold
      ),
    );
  }
}
