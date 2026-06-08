import 'package:flutter/material.dart';
import 'package:high_fidelity_screens/utils/app_colors.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Register' , style: TextStyle(color: AppColors.textColor ),),
      ),
    );
  }
}