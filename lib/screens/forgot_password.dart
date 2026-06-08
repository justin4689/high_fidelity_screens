import 'package:flutter/material.dart';
import 'package:high_fidelity_screens/utils/app_colors.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Text('Forgot Password' , style: TextStyle(color: AppColors.textColor),),
      ),
    );
  }
}