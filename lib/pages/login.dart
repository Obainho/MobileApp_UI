import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // String? _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 18, 18, 19),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 30),
            children: [
              Row(
                children: [
                  Text(
                    'My Bank',
                    style: GoogleFonts.mochiyPopOne(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 180),
                  const Image(
                    image: AssetImage(
                      'Assets/Images/flag.jpg',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 200),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Welcome back, ",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 151, 154, 156)),
                  ),
                  Text(
                    "Customer",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 250, 251, 252)),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Container(
                color: const Color.fromARGB(255, 32, 31, 31),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  cursorColor: const Color.fromARGB(255, 17, 14, 206),
                  style: const TextStyle(color: Colors.white),
                  // validator: (val) => val!.length < 6 ? 'Password too short.' : null,
                  // onSaved: (val) => _password = val,
                  decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 17, 14, 206),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white10),
                    ),
                    border: OutlineInputBorder(),
                    labelText: "Password",
                    //helperText: 'No more than 8 characters.',
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 151, 154, 156),
                    ),
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      size: 20,
                      color: Color.fromARGB(255, 92, 92, 92),
                    ),
                    //floatingLabelBehavior: FloatingLabelBehavior.never,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot password?",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 2, 27, 255),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 255, 94, 0),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      alignment: Alignment.center,
                      child: const Text(
                        "LOGIN",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Not you?",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 151, 154, 156),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Unlock device",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 255, 94, 0)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        
      ),
    );
  }
}
