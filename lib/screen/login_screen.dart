import 'package:flutter/material.dart';
import 'package:flutter_chat_app/login2-screen.dart';
import 'package:flutter_chat_app/profile.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 36, 63),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const Text(
                  'Hello, welcome back!',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Login to continue',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    fillColor: Color.fromARGB(73, 255, 255, 255),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    hintText: 'Username',
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    fillColor: const Color.fromARGB(73, 255, 255, 255),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'Password',
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forget password ?',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      maximumSize: const Size.fromRadius(50)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const profile()));
                  },
                  child: const Text(
                    'Log in',
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text('Or sign in with'),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    maximumSize: const Size.fromWidth(291),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/goog.png',
                        scale: 4,
                      ),
                      const Text('Login with Google'),
                    ],
                  ),
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      maximumSize: const Size.fromWidth(291)),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/facebook.png',
                        scale: 4,
                      ),
                      const Text('Login with Facebook')
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Dont have an account?',
                      style: TextStyle(color: Colors.white),
                    ),
                    MaterialButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const login2(),
                            ),
                          );
                        },
                        child: const Text(
                          'Sign up',
                          style: TextStyle(color: Colors.amber),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
