import 'package:flutter/material.dart';

import 'package:high_fidelity_screens/utils/app_colors.dart';


class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Reset Password Page', style: TextStyle(color: AppColors.textColor),),
      ),
    );
  }
}