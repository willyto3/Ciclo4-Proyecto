import 'package:blockchaimprims/features/profile/presentation/pages/login/login_screen.dart';
import 'package:blockchaimprims/features/profile/presentation/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 10), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => const LoginScreen(),));
    });
  }
  final estilo = const TextStyle(
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
