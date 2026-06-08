import 'package:flutter/material.dart';
import 'package:high_fidelity_screens/utils/app_colors.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 70),

                Center(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                Text(
                  'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum.',
                  style: TextStyle(
                    color: AppColors.textColor,
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 20),

                // SOCIAL BUTTONS
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 56,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xffF5F9FE),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/facebook.png'),
                            const SizedBox(width: 10),
                            const Text(
                              'Facebook',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(width: 10),

                    Expanded(
                      child: Container(
                        height: 56,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xffF5F9FE),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/google.png'),
                            const SizedBox(width: 10),
                            const Text(
                              'Google',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // OR DIVIDER
                Row(
                  children: [
                    Expanded(child: Container(height: 1, color: Colors.grey)),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text('Or'),
                    ),
                    Expanded(child: Container(height: 1, color: Colors.grey)),
                  ],
                ),

                const SizedBox(height: 20),

                // INPUTS
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.primary.withOpacity(0.05),
                    hintText: 'Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                ),

                const SizedBox(height: 15),

                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.primary.withOpacity(0.05),
                    hintText: 'Email / Phone Number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                ),

                const SizedBox(height: 15),

                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.primary.withOpacity(0.05),
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                  ),
                ),

                const SizedBox(height: 15),

                // CHECKBOX
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                 
                  children: [
                    Checkbox(
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value ?? false;
                        });
                      },
                    ),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                          children: [
                            const TextSpan(
                              text: "I agree to the ",
                            ),
                            TextSpan(
                              text: "Terms of Service",
                              style: TextStyle(
                                color: AppColors.primary,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const TextSpan(text: " and "),
                            TextSpan(
                              text: "Privacy Policy",
                              style: TextStyle(
                                color: AppColors.primary,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // BUTTON
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Create Account',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // LOGIN LINK
                
                 RichText(
                    text: TextSpan(
                      style: const TextStyle(color: Colors.black),
                      children: [
                        const TextSpan(text: "Do you have an account? "),
                        TextSpan(
                          text: "Sign in",
                          style: TextStyle(
                            color: AppColors.primary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}