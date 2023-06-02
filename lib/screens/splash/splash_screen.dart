import 'package:flutter/material.dart';

import '../../widgets/copy_rigtht.dart';
import '../auth/login/login.dart';

class SplashScreen extends StatefulWidget {
  static String routeName = '/splashScreen';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 10)).then((_) {
      Navigator.of(context).pushNamedAndRemoveUntil(
        LoginScreen.routeName,
        (route) => false,
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 1),
              Column(
                children: [
                  SizedBox(
                    width: 250,
                    height: 200,
                    child: Image.asset('assets/images/copy_logo.jpg'),
                  ),
                  Container(
                    width: 100,
                    height: 50,
                    padding: const EdgeInsets.all(5),
                    child: Image.asset('assets/images/loading.gif'),
                  ),
                ],
              ),
              const CopyRight()
            ],
          ),
        ),
      ),
    );
  }
}
