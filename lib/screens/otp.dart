import 'package:flutter/material.dart';
import 'package:high_fidelity_screens/utils/app_colors.dart';

class Otp extends StatelessWidget {
  const Otp({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Text('Otp page' , style: TextStyle(color: AppColors.textColor)),
      ),
    );
  }
}