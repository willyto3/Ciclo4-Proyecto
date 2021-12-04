import 'package:blockchaimprims/features/profile/presentation/pages/login/login_screen.dart';
import 'package:blockchaimprims/features/profile/presentation/pages/splash/splash_controller.dart';
import 'package:blockchaimprims/features/profile/presentation/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

  const estilo = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.bold,
    color: ColoresApp.white,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF6969b3),
              Color(0xFF4b244a),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                child: Image.asset(
                  'assets/images/logo/blockChainLogo.png',
                  height: 200,
                  width: 200,
                ),
                radius: 100,
                backgroundColor: const Color(0xFF6969b3),
              ),
              const SizedBox(height: 10),
              Text(
                'Block Chain Prism',
                style: GoogleFonts.pacifico(textStyle: estilo),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
