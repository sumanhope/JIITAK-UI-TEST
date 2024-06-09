import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitakuitest/screens/bottomnavigation.dart';
import 'package:jiitakuitest/screens/editdetails.dart';

import 'screens/stampdetails.dart';
import 'utils/constants/sizes.dart';
import 'utils/theme/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'JIITAK UI',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MFAppTheme.lightTheme,
      home: const InitialScreen(),
    );
  }
}

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD1D1D1),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // SizedBox(
              //   width: size.width,
              //   height: size.height * 0.4,
              //   child: Lottie.asset(
              //     "assets/images/lottieanimation/drivinganimation.json",
              //     fit: BoxFit.contain,
              //   ),
              // ),
              const SizedBox(
                height: MFSizes.spaceBtwItems,
              ),
              InitialButton(
                title: "Home Screen",
                func: () {
                  Get.to(() => const BottomNavigationScreen());
                },
              ),
              const SizedBox(
                height: MFSizes.spaceBtwItems,
              ),
              InitialButton(
                  title: "Stamp Screen",
                  func: () {
                    Get.to(() => const StampDetailsScreen());
                  }),
              const SizedBox(
                height: MFSizes.spaceBtwItems,
              ),
              InitialButton(
                  title: "Edit Details Screen",
                  func: () {
                    Get.to(() => const EditDetailsScreen());
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class InitialButton extends StatelessWidget {
  const InitialButton({
    super.key,
    required this.title,
    required this.func,
  });

  final String title;
  final VoidCallback func;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.56,
      height: size.height * 0.068,
      child: ElevatedButton(
        onPressed: func,
        child: Text(
          title,
          style: Theme.of(context).textTheme.titleSmall!.apply(color: Colors.white),
        ),
      ),
    );
  }
}
