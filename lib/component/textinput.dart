import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hbdforyoubby/component/ukuran.dart';
import 'package:hbdforyoubby/component/warna.dart';

class TextInputEmail extends StatefulWidget {
  final String label;
  final String hint;
  final IconData iconn;
  final TextInputAction aksi;
  TextInputEmail(
      {required this.label,
      required this.hint,
      required this.iconn,
      required this.aksi});
  @override
  State<TextInputEmail> createState() => _TextInputEmailState();
}

class _TextInputEmailState extends State<TextInputEmail> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 7.h),
          child: Text(
            widget.label,
            style: GoogleFonts.laila(fontSize: Ukuran.textbiasa),
          ),
        ),
        TextFormField(
          textInputAction: widget.aksi,
          style: GoogleFonts.laila(fontSize: Ukuran.textbiasa),
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              hintText: widget.hint,
              hintStyle: GoogleFonts.laila(fontSize: Ukuran.textbiasa),
              prefixIcon: Icon(widget.iconn),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.r),
                  borderSide: BorderSide(color: ListWarna.warnaBiruPrimer)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.r),
                  borderSide:
                      BorderSide(color: ListWarna.warnaBiruPrimer, width: 2))),
        ),
      ],
    );
  }
}

class TextInputPassword extends StatefulWidget {
  final String label;
  final String hint;
  final IconData iconn;
  final IconData iconnBelakang;
  final TextInputAction aksi;
  TextInputPassword(
      {required this.label,
      required this.hint,
      required this.iconn,
      required this.aksi,
      required this.iconnBelakang});
  @override
  State<TextInputPassword> createState() => _TextInputPasswordState();
}

class _TextInputPasswordState extends State<TextInputPassword> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 7.h),
          child: Text(widget.label,
              style: GoogleFonts.laila(fontSize: Ukuran.textbiasa)),
        ),
        TextFormField(
          textInputAction: widget.aksi,
          style: GoogleFonts.laila(fontSize: Ukuran.textbiasa),
          obscureText: true,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              hintText: widget.hint,
              hintStyle: GoogleFonts.laila(fontSize: Ukuran.textbiasa),
              prefixIcon: Icon(widget.iconn),
              suffixIcon: Icon(widget.iconnBelakang),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.r),
                  borderSide: BorderSide(color: ListWarna.warnaBiruPrimer)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.r),
                  borderSide:
                      BorderSide(color: ListWarna.warnaBiruPrimer, width: 2))),
        ),
      ],
    );
  }
}
