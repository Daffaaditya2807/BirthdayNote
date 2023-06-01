import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hbdforyoubby/Halaman/pengenalan.dart';
import 'package:hbdforyoubby/component/ukuran.dart';
import 'package:hbdforyoubby/component/warna.dart';
import 'package:wave_transition/wave_transition.dart';

import '../component/animasi.dart';

class SplashScreen extends StatefulWidget {
  static String RoutePage = "/splash";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigateToNextScreen();
  }

  Future<void> _navigateToNextScreen() async {
    await Future.delayed(const Duration(milliseconds: 2000));
    Navigator.push(
        context,
        WaveTransition(
            child: Pengenalan(),
            center: FractionalOffset(0.90, 0.90),
            duration: Duration(milliseconds: 2000)));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ScreenUtilInit(
      builder: (context, child) {
        return Scaffold(
            body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 20.0.w),
                child: AnimatedImage(
                    duration: Duration(milliseconds: 1000),
                    imagee: Image.asset("assets/splash.png")),
              ),
              AnimasiWidgetSlideHorizontal(
                duration: Duration(milliseconds: 1000),
                horizontal: -200,
                widgett: Text(
                  "BIRTHDAY",
                  style: GoogleFonts.laila(
                      fontSize: Ukuran.headerTextAwal,
                      fontWeight: FontWeight.bold,
                      color: ListWarna.warnaBiruPrimer),
                ),
              ),
              AnimasiWidgetSlideHorizontal(
                duration: Duration(milliseconds: 1000),
                horizontal: 200,
                widgett: Text("Buatlah harimu agar lebih baik kedepannya",
                    style: GoogleFonts.laila(
                      fontSize: Ukuran.subHeader,
                      height: -0.01.h,
                    )),
              )
            ],
          ),
        ));
      },
    );
  }
}
