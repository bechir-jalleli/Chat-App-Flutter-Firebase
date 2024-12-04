import 'package:flutter/material.dart';
import 'package:untitled4/screens/registration_screen.dart';
import 'package:untitled4/screens/signin_screen.dart';
import 'package:untitled4/widgets/my_button.dart';

class WelcomeScreen extends StatefulWidget {
  static String screenRoute = 'welcome_screen';

  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centers children vertically
          crossAxisAlignment: CrossAxisAlignment.stretch, // Stretches children horizontally
          children: [
            Column(
              children: [
                // Use a different image path here
                Container(
                  height: 180,
                  child: Image.asset('images/message.jpg'),
                ),
                const Text(
                  'Message App', // Adjusted title
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    color: Color(0xff2e386b),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            // First Button
            MyButton(
              color: Colors.blueAccent,
              title: 'Sign in',
              onPressed: () {
                Navigator.pushNamed(context, SignInScreen.screenRoute);
              },
            ),
            // Second Button
            MyButton(
              color: Colors.green,
              title: 'Register',
              onPressed: () {
                Navigator.pushNamed(context, RegistrationScreen.screenRoute);
              },
            ),
          ],
        ),
      ),
    );
  }
}
