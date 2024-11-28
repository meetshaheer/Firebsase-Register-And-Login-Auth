import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:signup/signup.dart';
import 'package:signup/welcomscreen.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  login() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const WelcomeScreen()));
    } on FirebaseAuthException catch (e) {
      String message = '';
      if (e.code == 'user-not-found') {
        message = "User not found";
      } else if (e.code == 'wrong-password') {
        message = "Wrong Password";
      } else {
        message = "Password & User not matched";
      }
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red[900],
          duration: const Duration(seconds: 2),
          content: Text(message),
        ),
      );
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.android,
                  size: 50,
                ),
                // Hello
                Text("Hello Fankar!",
                    style: GoogleFonts.bebasNeue(
                      fontSize: 60,
                    )),

                const Text(
                  "Welcome back, you've been missed!",
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),

                const SizedBox(
                  height: 50,
                ),

                //email textfield
                CustomTextField(
                  controller: _emailController,
                  placeholder: 'Email',
                  inputType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 20,
                ),

                //password textfield

                CustomTextField(
                  secureText: true,
                  controller: _passwordController,
                  placeholder: 'Password',
                  inputType: TextInputType.text,
                ),
                const SizedBox(
                  height: 20,
                ),
                // login button

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: GestureDetector(
                    onTap: () {
                      login();
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.purple, borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: const Center(
                          child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      )),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                // not a member

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Not a member? ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    GestureDetector(
                      onTap: () =>
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignUp())),
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.purpleAccent,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.placeholder,
    required this.inputType,
    required this.controller,
    this.secureText,
  });

  final TextEditingController controller;
  final String placeholder;
  final TextInputType inputType;
  final bool? secureText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(
            color: const Color.fromRGBO(238, 238, 238, 1),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 6, right: 10),
          child: TextField(
            obscureText: secureText ?? false,
            controller: controller,
            keyboardType: inputType,
            cursorColor: const Color.fromARGB(255, 62, 21, 88),
            cursorWidth: 1.4,
            decoration: InputDecoration(
              label: Text(placeholder),
              labelStyle: const TextStyle(
                color: Color.fromARGB(255, 115, 35, 128),
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
