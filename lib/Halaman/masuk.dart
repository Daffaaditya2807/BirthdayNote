import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hbdforyoubby/component/animasi.dart';
import 'package:hbdforyoubby/component/textinput.dart';
import 'package:hbdforyoubby/component/ukuran.dart';
import 'package:hbdforyoubby/component/warna.dart';

class HalamanMasuk extends StatefulWidget {
  static String RoutePage = "/HalamanLogin";
  @override
  State<HalamanMasuk> createState() => _HalamanMasukState();
}

class _HalamanMasukState extends State<HalamanMasuk> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ScreenUtilInit(
      builder: (context, child) {
        return Scaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.w),
            child: Form(
              child: ListView(
                children: [
                  SizedBox(
                    height: 30.h,
                  ),
                  AnimasiWidgetSlideHorizontal(
                      duration: Duration(milliseconds: 1000),
                      widgett: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Selamat Datang",
                            style: GoogleFonts.laila(
                                fontWeight: FontWeight.bold,
                                color: ListWarna.warnaBiruPrimer,
                                fontSize: Ukuran.headerTextSedengan),
                          )),
                      horizontal: 200),
                  AnimasiWidgetSlideHorizontal(
                      duration: Duration(milliseconds: 1000),
                      widgett: Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.0.w),
                          child: Text(
                            "Mari ciptakan keharmonisan dengan pasangan maupun temanmu",
                            style:
                                GoogleFonts.laila(fontSize: Ukuran.subHeader),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      horizontal: -200),
                  Container(
                    height: 200.h,
                    child: AnimatedImage(
                        duration: Duration(milliseconds: 1000),
                        imagee: Image.asset(
                          "assets/login.png",
                        )),
                  ),
                  TextInputEmail(
                      label: "Email Pengguna",
                      hint: "cth : ayy@gmail.com",
                      aksi: TextInputAction.next,
                      iconn: Icons.email),
                  TextInputPassword(
                      label: "Kata Sandi",
                      hint: "cth: ForceClose123",
                      iconn: Icons.key_rounded,
                      aksi: TextInputAction.done,
                      iconnBelakang: Icons.visibility_off)
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
