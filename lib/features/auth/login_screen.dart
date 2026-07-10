import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F0F0F),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Icon(
                  Icons.movie_creation_outlined,
                  color: Colors.red,
                  size: 80,
                ),

                const SizedBox(height: 20),

                const Text(
                  "IFFARIX",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  "Unlimited Movies, TV Shows & More",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 50),

                TextField(
                  controller: emailController,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Email Address",
                    hintStyle: const TextStyle(color: Colors.white54),
                    prefixIcon: const Icon(
                      Icons.email_outlined,
                      color: Colors.white70,
                    ),
                    filled: true,
                    fillColor: const Color(0xFF1E1E1E),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: const BorderSide(
                        color: Colors.red,
                        width: 2,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                TextField(
                  controller: passwordController,
                  obscureText: _obscurePassword,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: const TextStyle(color: Colors.white54),
                    prefixIcon: const Icon(
                      Icons.lock_outline,
                      color: Colors.white70,
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscurePassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: Colors.white70,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                    ),
                    filled: true,
                    fillColor: const Color(0xFF1E1E1E),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: const BorderSide(
                        color: Colors.red,
                        width: 2,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                SizedBox(
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {
                      if (emailController.text.trim().isEmpty ||
                          passwordController.text.trim().isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            backgroundColor: Colors.red,
                            content: Text(
                              "Please enter your email and password",
                            ),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            backgroundColor: Colors.green,
                            content: Text(
                              "Login Successful",
                            ),
                          ),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    child: const Text(
                      "SIGN IN",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 8),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 25),

                const Divider(
                  color: Colors.white24,
                ),

                const SizedBox(height: 20),

                const Text(
                  "Version 1.0",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white38,
                    fontSize: 12,
                  ),
                ),
                ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}