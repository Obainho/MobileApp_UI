import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../Widgets/app_view.dart';

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
      body: Center(
        child: ListView(
          padding: const EdgeInsets.only(
            top: 60,
            left: 20,
            right: 20,
            bottom: 30,
          ),
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'My Bank',
                  style: GoogleFonts.mochiyPopOne(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    // color: Colors.white,
                  ),
                ),
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
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "Welcome back ",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: "Customer",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 2, 27, 255),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Consumer<AppData>(
              builder: (context, value, child) {
                return Container(
                  color: value.loginTexfieldColor,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    cursorColor: Colors.white10,
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white10,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white10,
                        ),
                      ),
                      border: OutlineInputBorder(),
                      labelText: "Password",
                      //helperText: 'No more than 8 characters.',
                      labelStyle: TextStyle(
                        color: Color.fromARGB(255, 166, 168, 168),
                      ),
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        size: 20,
                        color: Color.fromARGB(255, 112, 112, 112),
                      ),
                      //floatingLabelBehavior: FloatingLabelBehavior.never,
                    ),
                  ),
                );
              },
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
                    // color: Color.fromARGB(255, 151, 154, 156),
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
