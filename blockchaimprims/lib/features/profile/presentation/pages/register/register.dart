import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../theme.dart';
import '../bottom_bar/bottom_bar_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  final estilo = const TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.bold,
    color: ColoresApp.black,
  );
  final estilo2 = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: ColoresApp.black,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    child: Image.asset(
                      'assets/images/logo/blockChainLogo.png',
                    ),
                    radius: 50,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Register',
                      style: GoogleFonts.pacifico(textStyle: estilo),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Username',
                      style: GoogleFonts.robotoCondensed(textStyle: estilo2),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.person),
                        hintText: 'Enter your User Name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(color: ColoresApp.black),
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Name',
                      style: GoogleFonts.robotoCondensed(textStyle: estilo2),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.person),
                        hintText: 'Enter your Name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(color: ColoresApp.black),
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Email',
                      style: GoogleFonts.robotoCondensed(textStyle: estilo2),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.email),
                        hintText: 'Enter your Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(color: ColoresApp.black),
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Phone Number',
                      style: GoogleFonts.robotoCondensed(textStyle: estilo2),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.phone),
                        hintText: 'Enter your Phone Number',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(color: ColoresApp.black),
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Password',
                      style: GoogleFonts.robotoCondensed(textStyle: estilo2),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock),
                        hintText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(color: ColoresApp.black),
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Repeat Password',
                      style: GoogleFonts.robotoCondensed(textStyle: estilo2),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock),
                        hintText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(color: ColoresApp.black),
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    ElevatedButton(
                        onPressed: (){
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => const BottomBarScreen(),));
                        },
                        child: Text('Register',
                            style: GoogleFonts.robotoCondensed(
                                textStyle: estilo2))),
                    Text(
                      'You Have a account?. Sign In.',
                      style: GoogleFonts.robotoCondensed(textStyle: estilo2),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Forgot your password?',
                      style: GoogleFonts.robotoCondensed(textStyle: estilo2),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
