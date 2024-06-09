import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/favoritecontroller.dart';
import '../utils/constants/colors.dart';
import '../utils/constants/sizes.dart';

class JobDetailContainer extends StatelessWidget {
  const JobDetailContainer({
    super.key,
    required this.jobtitle,
    required this.caretype,
    required this.yen,
    required this.time,
    required this.address,
    required this.providername,
    required this.imagelink,
    required this.transportfee,
    required this.index,
  });

  final int index;
  final String imagelink, jobtitle, caretype, yen, time, address, transportfee, providername;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final favorite = Get.put(FavoriteController());
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
      child: SizedBox(
        width: size.width,
        child: Stack(
          children: [
            Center(
              child: Container(
                width: size.width * 0.9,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Container(
                      width: size.width,
                      height: size.height * 0.26,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                        image: DecorationImage(
                          image: AssetImage(imagelink),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            jobtitle,
                            style: const TextStyle(
                              color: Color(0xFF303030),
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            height: MFSizes.sm,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: size.width * 0.5,
                                height: size.height * 0.04,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFEEAB40).withOpacity(0.15),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text(
                                    caretype,
                                    style: const TextStyle(
                                      color: Color(0xFFFAAA14),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                yen,
                                style: const TextStyle(
                                  color: Color(0xFF303030),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: MFSizes.md,
                          ),
                          Text(
                            time,
                            style: const TextStyle(
                              color: Color(0xFF303030),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            height: MFSizes.xs,
                          ),
                          Text(
                            address,
                            style: const TextStyle(
                              color: Color(0xFF303030),
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            height: MFSizes.xs,
                          ),
                          Text(
                            transportfee,
                            style: const TextStyle(
                              color: Color(0xFF303030),
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                providername,
                                style: TextStyle(
                                  color: const Color(0xFF303030).withOpacity(0.35),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Obx(
                                () => IconButton(
                                  onPressed: () {
                                    favorite.toggleFavorite(index);
                                  },
                                  icon: Icon(
                                    favorite.isFavorite(index) ? Icons.favorite : Icons.favorite_outline,
                                    size: 35,
                                    color: favorite.isFavorite(index) ? Colors.red : const Color(0xFF303030).withOpacity(0.35),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.215,
              left: 0,
              child: Container(
                width: size.width * 0.23,
                height: size.height * 0.035,
                decoration: BoxDecoration(
                  color: MFColors.error,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Center(
                  child: Text(
                    "本日まで",
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DateContainer extends StatelessWidget {
  const DateContainer({
    super.key,
    required this.date,
    required this.day,
    required this.selected,
  });

  final String date;
  final String day;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: size.width * 0.14,
        height: size.height * 0.1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: selected ? MFColors.fillContiner : const Color(0xFFFFFFFF),
        ),
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              day,
              style: TextStyle(color: selected ? Colors.white : Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              date,
              style: TextStyle(color: selected ? Colors.white : Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
