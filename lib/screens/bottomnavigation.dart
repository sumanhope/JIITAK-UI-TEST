import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:jiitakuitest/screens/home.dart';

class BottomNavigationScreen extends StatelessWidget {
  const BottomNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final List pages = [const HomeScreen()];
    return Scaffold(
      body: pages[0],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        width: size.width * 0.18,
        height: size.width * 0.18,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: const Color(0xFFFAAA14),
            shape: const CircleBorder(),
            elevation: 0,
            child: const Icon(
              TeenyIcons.scan,
              size: 30,
              color: Colors.white,
            ),
          ),
        ),
      ),
      bottomNavigationBar: const BottomAppBar(
        padding: EdgeInsets.all(5),
        color: Color(0xFFFFFFFF),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NaviagtionButtons(
              icon: Iconsax.search_normal_1_outline,
              label: "さがす",
              currentPage: true,
            ),
            NaviagtionButtons(
              icon: MingCute.briefcase_line,
              label: "お仕事",
              currentPage: false,
            ),
            Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  top: 35.0,
                ),
                child: Text("打刻する")),
            NaviagtionButtons(
              icon: AntDesign.message_outline,
              label: "チャット",
              currentPage: false,
            ),
            NaviagtionButtons(
              icon: AntDesign.user_outline,
              label: "チャット",
              currentPage: false,
            ),
          ],
        ),
      ),
    );
  }
}

class NaviagtionButtons extends StatelessWidget {
  const NaviagtionButtons({
    super.key,
    required this.icon,
    required this.label,
    required this.currentPage,
  });

  final IconData icon;
  final String label;
  final bool currentPage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            icon,
            color: currentPage ? const Color(0xFFFAAA14) : Colors.black,
            size: 30,
          ),
          Text(
            label,
            style: TextStyle(
              color: currentPage ? const Color(0xFFFAAA14) : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
