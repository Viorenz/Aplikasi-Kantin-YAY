import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Alasan menggunakan GoogleFonts.montserrat karena memiliki struktur huruf yang mencolok dan memiliki tingkat keterbacaan yang tinggi, 
// serta ideal untuk menampilkan daftar menu serta harga dengan jelas kepada pengguna aplikasi kantin.
class TextGoogle extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;

  const TextGoogle(
    this.text, {
    super.key,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.montserrat(
        fontSize: fontSize ?? 14,
        fontWeight: fontWeight ?? FontWeight.normal,
        color: color ?? Colors.black,
      ),
    );
  }
}
