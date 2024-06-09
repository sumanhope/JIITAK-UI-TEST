import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:jiitakuitest/data/jobdetails.dart';
import 'package:jiitakuitest/utils/constants/sizes.dart';
import '../widgets/homewidgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 5,
        backgroundColor: Colors.white,
      ),
      floatingActionButton: SizedBox(
        width: size.width * 0.15,
        height: size.width * 0.15,
        child: FittedBox(
          child: FloatingActionButton(
            heroTag: "location",
            onPressed: () {},
            backgroundColor: const Color(0xFFFFFFFF),
            shape: const CircleBorder(),
            child: const Icon(
              EvaIcons.pin_outline,
              size: 35,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: size.height * 0.09,
              width: size.width,
              color: const Color(0xFFFFFFFF),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      height: size.height * 0.05,
                      width: size.width * 0.7,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF7F7F7),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "北海道, 札幌市",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      EvaIcons.options_outline,
                      size: 35,
                      color: const Color(0xFF303030).withOpacity(0.35),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_outline,
                      size: 35,
                      color: Color(0xFFEE5F40),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: size.height * 0.055,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFFFAAA14), Color(0xFFFFD78D)],
                  stops: [0, 0.55],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
              ),
              child: const Center(
                child: Text(
                  "2022年 5月 26日（木）",
                  style: TextStyle(
                    color: Color(0xFF303030),
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: MFSizes.spaceBtwItems,
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  SizedBox(
                    width: size.width,
                    height: size.height * 0.12,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: datedetails.length,
                      itemBuilder: (context, index) {
                        return DateContainer(
                          date: datedetails[index]["date"],
                          day: datedetails[index]["day"],
                          selected: datedetails[index]["selected"],
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: MFSizes.sm,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: jobdetails.length,
                    itemBuilder: (_, index) {
                      return JobDetailContainer(
                        index: index,
                        imagelink: jobdetails[index]["imagelink"],
                        jobtitle: jobdetails[index]["jobtitle"],
                        caretype: jobdetails[index]["caretype"],
                        yen: jobdetails[index]["yen"],
                        time: jobdetails[index]["time"],
                        address: jobdetails[index]["address"],
                        transportfee: jobdetails[index]["transportfee"],
                        providername: jobdetails[index]["providername"],
                      );
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
