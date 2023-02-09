import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecom_app/const/app_colors.dart';
import 'package:flutter_ecom_app/ui/login_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 3),
      () {
        // Navigator.of(context).pop();
        // did not back to the previous screen
        Navigator.of(context).pushReplacement(
          CupertinoPageRoute(
            builder: (BuildContext context) => const LoginScreen(),
          ),
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.deep_orange,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'E-Comm Business',
                style: TextStyle(
                  color: AppColors.kWhite,
                  fontSize: 22.spMin, //This is for responsive
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              const CircularProgressIndicator(
                color: AppColors.kWhite,
              )
            ],
          ),
        ),
      ),
    );
  }
}
