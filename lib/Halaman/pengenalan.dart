import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hbdforyoubby/Halaman/masuk.dart';
import 'package:hbdforyoubby/component/animasi.dart';
import 'package:hbdforyoubby/component/ukuran.dart';
import 'package:hbdforyoubby/component/warna.dart';

class Pengenalan extends StatefulWidget {
  static String RoutePage = "/introawal";
  @override
  State<Pengenalan> createState() => _PengenalanState();
}

class _PengenalanState extends State<Pengenalan> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ScreenUtilInit(
      builder: (context, child) {
        return Scaffold(
          backgroundColor: ListWarna.warnaBiruPrimer,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimasiWidgetSlideVertical(
                    duration: Duration(milliseconds: 2500),
                    widgett: Text(
                      "PENGENALAN",
                      style: GoogleFonts.laila(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: Ukuran.headerTextAwal),
                    ),
                    vertikal: -200.h),
                AnimasiWidgetSlideVertical(
                    duration: Duration(milliseconds: 2500),
                    widgett: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      child: Text(
                        "Mari coba aplikasi ini agar anda dapat mencatat siapa saja orang yang akan berulang tahun dan siapkan kado kejutan",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.laila(
                            color: Colors.white, fontSize: Ukuran.subHeader),
                      ),
                    ),
                    vertikal: 200.h),
                AnimatedImage(
                  duration: Duration(milliseconds: 3000),
                  imagee: Image.asset(
                    "assets/pengenalan.png",
                  ),
                ),
                AnimasiWidgetSlideHorizontal(
                    duration: Duration(milliseconds: 3000),
                    widgett: Text(
                      "Mari Lanjutkan Selangkah Lagi",
                      style: GoogleFonts.laila(
                          color: Colors.white, fontSize: Ukuran.subHeader),
                    ),
                    horizontal: 200.w),
                SizedBox(
                  height: 15.h,
                ),
                AnimasiWidgetSlideHorizontal(
                    duration: Duration(milliseconds: 3000),
                    widgett: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: Ukuran.lebarPendekButton),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, HalamanMasuk.RoutePage.toString());
                        },
                        child: Text(
                          "Lanjut",
                          style: GoogleFonts.laila(
                              fontSize: Ukuran.textbutton,
                              fontWeight: FontWeight.bold),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: ListWarna.pinkBruh,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    Ukuran.roundedButton)),
                            minimumSize: Size.fromHeight(Ukuran.tinggiButon)),
                      ),
                    ),
                    horizontal: -200.w)
              ],
            ),
          ),
        );
      },
    );
  }
}
