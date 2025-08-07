import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/views/screens/authentication_screens/login_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withAlpha(222),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Create Your account",
                style: GoogleFonts.getFont(
                  'Lato',
                  color: Color(0xFF0d120E),
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.2,
                  fontSize: 23,
                ),
              ),
              Text(
                "To explore the world exclusively",
                style: GoogleFonts.getFont(
                  'Lato',
                  color: Color.fromARGB(255, 78, 0, 0),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.asset(
                'assets/images/Illustration.png',
                width: 200,
                height: 200,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Email',
                  style: GoogleFonts.getFont(
                    'Nunito Sans',
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.2,
                  ),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  labelText: "enter your email",
                  labelStyle: GoogleFonts.getFont(
                    "Nunito Sans",
                    fontSize: 14,
                    letterSpacing: 0.1,
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image.asset(
                      'assets/icons/email.png',
                      width: 15,
                      height: 15,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Full Name',
                  style: GoogleFonts.getFont(
                    'Nunito Sans',
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.2,
                  ),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  labelText: "enter your full name",
                  labelStyle: GoogleFonts.getFont(
                    "Nunito Sans",
                    fontSize: 14,
                    letterSpacing: 0.1,
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image.asset(
                      'assets/icons/user.jpeg',
                      width: 15,
                      height: 15,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Password',
                  style: GoogleFonts.getFont(
                    'Nunito Sans',
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.2,
                  ),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  labelText: "enter your password",
                  labelStyle: GoogleFonts.getFont(
                    "Nunito Sans",
                    fontSize: 14,
                    letterSpacing: 0.1,
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image.asset(
                      'assets/icons/password.png',
                      width: 15,
                      height: 15,
                    ),
                  ),
                  suffixIcon: Icon(Icons.visibility),
                ),
              ),
              SizedBox(height: 40),
              Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF102DE1),
                      Color.fromARGB(228, 0, 15, 110),
                    ],
                  ),
                ),
                child: Center(
                  child: Text(
                    'Sign Up',
                    style: GoogleFonts.getFont(
                      'Lato',
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account ? ",
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return LoginScreen();
                          },
                        ),
                      );
                    },
                    child: Text(
                      "Sign In",
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF102DE1),
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
