import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../theme.dart';
import '../bottom_bar/bottom_bar_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
            flex: 2,
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
                    radius: 90,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Login',
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
                        hintText: 'Email, Phone Number or User Name',
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
                        prefixIcon: const Icon(Icons.password),
                        hintText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(color: ColoresApp.black),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                        onPressed: (){
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => const BottomBarScreen(),));
                        },
                        child: Text('Log In',
                            style: GoogleFonts.robotoCondensed(
                                textStyle: estilo2))),
                    Image.asset(
                      'assets/images/logo/google_sign_in.png',
                      width: 150,
                    ),
                    Text(
                      'Dont Have a account?. Register a new account',
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
