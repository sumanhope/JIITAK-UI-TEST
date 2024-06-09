import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:jiitakuitest/utils/constants/sizes.dart';

import '../widgets/stampdetailswidgets.dart';

class StampDetailsScreen extends StatelessWidget {
  const StampDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final stampdetails = ["2021 / 11 / 18", "2021 / 11 / 17", "2021 / 11 / 16", "2021 / 11 / 13", "2021 / 11 / 12"];
    return Scaffold(
      backgroundColor: const Color(0xFFA8B1FF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFA8B1FF),
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          "スタンプカード詳細",
          style: TextStyle(
            color: Color(0xFFFFFFFF),
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
        leadingWidth: 70,
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFF949EFF),
            ),
            child: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.keyboard_arrow_left_outlined,
                size: 30,
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Iconsax.minus_cirlce_outline,
              size: 25,
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    "Mer キッチン",
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Text(
                  "現在の獲得数",
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "30",
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "個",
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: MFSizes.sm,
          ),
          Expanded(
            child: Container(
              width: size.width,
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
                top: 30,
                bottom: 1,
              ),
              decoration: const BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(25),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: SizedBox(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 2,
                        padding: const EdgeInsets.all(9),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (_, index) {
                          return const StampContainer();
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: MFSizes.xs,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "2 / 2枚目",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  const SizedBox(
                    height: MFSizes.xs,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      "スタンプ獲得履歴",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  const SizedBox(
                    height: MFSizes.lg,
                  ),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: stampdetails.length,
                      itemBuilder: (_, index) {
                        return DetailWidget(date: stampdetails[index]);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
