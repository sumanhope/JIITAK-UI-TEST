import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:jiitakuitest/utils/constants/sizes.dart';
import '../widgets/editdetailwidgets.dart';

class EditDetailsScreen extends StatelessWidget {
  const EditDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        automaticallyImplyLeading: false,
        centerTitle: true,

        elevation: 2.0, // Adjust the elevation to increase the shadow
        shadowColor: Colors.black.withOpacity(0.4),
        title: const Text(
          "店舗プロフィール編集",
          style: TextStyle(
            color: Color(0xFF4B4948),
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
        leadingWidth: 70,
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color(0xFF8C817B).withOpacity(0.1),
            ),
            child: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.keyboard_arrow_left_outlined,
                size: 30,
                color: Color(0xFFB8B8B8),
              ),
            ),
          ),
        ),
        actions: [
          Badge(
            backgroundColor: const Color(0xFFEE7D42),
            label: const Text(
              "99+",
              style: TextStyle(fontSize: 10),
            ),
            alignment: Alignment.center,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Iconsax.notification_bing_outline,
                size: 25,
                color: Color(0xFF4B4948),
              ),
            ),
          ),
          const SizedBox(
            width: MFSizes.sm,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const InputTitle(title: "店舗名"),
              const InputField(
                input: "Mer キッチン",
              ),
              const InputTitle(title: "代表担当者名"),
              const InputField(
                input: "林田　絵梨花",
              ),
              const InputTitle(title: "店舗電話番号"),
              const InputField(
                input: "123 - 4567 8910",
              ),
              const InputTitle(title: "店舗住所"),
              const InputField(
                input: "大分県豊後高田市払田791-13",
              ),
              const SizedBox(
                height: MFSizes.sm,
              ),
              Container(
                width: size.width,
                height: size.height * 0.3,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.amber,
                    image: const DecorationImage(
                      image: AssetImage("assets/images/map.jpg"),
                      fit: BoxFit.cover,
                    )),
              ),
              const SizedBox(
                height: MFSizes.sm,
              ),
              const InputTTitle(title: "店舗外観", secondtitle: "（最大3枚まで）"),
              const Wrap(
                spacing: 4.0, // Space between items horizontally
                runSpacing: 8.0,
                children: [
                  SmallImageContainer(
                    imagelink: "assets/images/editdetails1.jpg",
                  ),
                  SmallImageContainer(
                    imagelink: "assets/images/editdetails1.jpg",
                  ),
                  NoImageContainer(),
                ],
              ),
              const SizedBox(
                height: MFSizes.sm,
              ),
              const InputTTitle(title: "店舗内観", secondtitle: "（1枚〜3枚ずつ追加してください）"),
              const Wrap(
                spacing: 4.0, // Space between items horizontally
                runSpacing: 8.0,
                children: [
                  SmallImageContainer(
                    imagelink: "assets/images/editdetails2.jpg",
                  ),
                  SmallImageContainer(
                    imagelink: "assets/images/editdetails2.jpg",
                  ),
                  SmallImageContainer(
                    imagelink: "assets/images/editdetails2.jpg",
                  ),
                ],
              ),
              const SizedBox(
                height: MFSizes.sm,
              ),
              const InputTTitle(title: "料理写真", secondtitle: "（1枚〜3枚ずつ追加してください）"),
              const Wrap(
                spacing: 4.0, // Space between items horizontally
                runSpacing: 8.0,
                children: [
                  SmallImageContainer(
                    imagelink: "assets/images/editdetails3.jpg",
                  ),
                  SmallImageContainer(
                    imagelink: "assets/images/editdetails4.jpg",
                  ),
                  SmallImageContainer(
                    imagelink: "assets/images/editdetails5.jpg",
                  ),
                ],
              ),
              const SizedBox(
                height: MFSizes.sm,
              ),
              const InputTTitle(title: "メニュー写真", secondtitle: "（1枚〜3枚ずつ追加してください）"),
              const Wrap(
                spacing: 4.0, // Space between items horizontally
                runSpacing: 8.0,
                children: [
                  SmallImageContainer(
                    imagelink: "assets/images/editdetails6.jpg",
                  ),
                  SmallImageContainer(
                    imagelink: "assets/images/editdetails7.jpg",
                  ),
                  SmallImageContainer(
                    imagelink: "assets/images/editdetails8.jpg",
                  ),
                ],
              ),
              const SizedBox(
                height: MFSizes.sm,
              ),
              const InputTitle(title: "営業時間"),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TimeInput(time: "10 : 00"),
                  Text(
                    "~",
                    style: TextStyle(fontSize: 30),
                  ),
                  TimeInput(time: "20 : 00"),
                ],
              ),
              const SizedBox(
                height: MFSizes.sm,
              ),
              const InputTitle(title: "ランチ時間"),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TimeInput(time: "11 : 00"),
                  Text(
                    "~",
                    style: TextStyle(fontSize: 30),
                  ),
                  TimeInput(time: "15 : 00"),
                ],
              ),
              const SizedBox(
                height: MFSizes.sm,
              ),
              const InputTitle(title: "定休日"),
              const Column(
                children: [
                  Row(
                    children: [
                      CheckBoxText(letter: "月", id: "closingdayrow1_1"),
                      SizedBox(
                        width: MFSizes.md,
                      ),
                      CheckBoxText(letter: "火", id: "closingdayrow1_2"),
                      SizedBox(
                        width: MFSizes.md,
                      ),
                      CheckBoxText(letter: "水", id: "closingdayrow1_3"),
                      SizedBox(
                        width: MFSizes.md,
                      ),
                      CheckBoxText(letter: "木", id: "closingdayrow1_4"),
                    ],
                  ),
                  Row(
                    children: [
                      CheckBoxText(letter: "金", id: "closingdayrow2_1"),
                      SizedBox(
                        width: MFSizes.md,
                      ),
                      CheckBoxText(letter: "土", id: "closingdayrow2_2"),
                      SizedBox(
                        width: MFSizes.md,
                      ),
                      CheckBoxText(letter: "日", id: "closingdayrow2_3"),
                      SizedBox(
                        width: MFSizes.md,
                      ),
                      CheckBoxText(letter: "祝", id: "closingdayrow2_4"),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: MFSizes.sm,
              ),
              const InputTitle(title: "料理カテゴリー"),
              const TimeInput(
                time: "料理カテゴリー選択",
                width: 0.7,
              ),
              const InputTitle(title: "予算"),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  YenInput(price: "¥ 1,000"),
                  Text(
                    "~",
                    style: TextStyle(fontSize: 30),
                  ),
                  YenInput(price: "¥ 2,000"),
                ],
              ),
              const SizedBox(
                height: MFSizes.sm,
              ),
              const InputTitle(title: "キャッチコピー"),
              const InputField(
                input: "美味しい！リーズナブルなオムライスランチ！",
              ),
              const SizedBox(
                height: MFSizes.sm,
              ),
              const InputTitle(title: "座席数"),
              const InputField(
                input: "40席",
              ),
              const SizedBox(
                height: MFSizes.sm,
              ),
              const InputTitle(title: "喫煙席"),
              const Row(
                children: [
                  CheckBoxText(
                    letter: "有",
                    id: "smokingseat_yes",
                  ),
                  SizedBox(
                    width: MFSizes.lg,
                  ),
                  CheckBoxText(letter: "無", id: "somkingseat_no")
                ],
              ),
              const SizedBox(
                height: MFSizes.sm,
              ),
              const InputTitle(title: "駐車場"),
              const Row(
                children: [
                  CheckBoxText(letter: "有", id: "parking_yes"),
                  SizedBox(
                    width: MFSizes.lg,
                  ),
                  CheckBoxText(letter: "無", id: "parking_no")
                ],
              ),
              const SizedBox(
                height: MFSizes.sm,
              ),
              const InputTitle(title: "来店プレゼント"),
              const Row(
                children: [
                  CheckBoxText(letter: "有（最大３枚まで）", id: "visit_yes"),
                  SizedBox(
                    width: MFSizes.sm,
                  ),
                  CheckBoxText(letter: "無", id: "visit_no")
                ],
              ),
              const SizedBox(
                height: MFSizes.sm,
              ),
              const Wrap(
                spacing: 4.0, // Space between items horizontally
                runSpacing: 8.0,
                children: [
                  SmallImageContainer(
                    imagelink: "assets/images/editdetails9.jpg",
                  ),
                  SmallImageContainer(
                    imagelink: "assets/images/editdetails10.jpg",
                  ),
                  SmallImageContainer(
                    imagelink: "assets/images/editdetails11.jpg",
                  ),
                ],
              ),
              const SizedBox(
                height: MFSizes.sm,
              ),
              const InputTitle(title: "来店プレゼント名"),
              const InputField(
                input: "いちごクリームアイスクリーム, ジュース",
              ),
              const SizedBox(
                height: MFSizes.spaceBtwSections,
              ),
              Container(
                width: size.width,
                height: size.height * 0.06,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [const Color(0xFFEE7D42).withOpacity(0.54), const Color(0xFFFFC8AB)],
                    stops: const [1, 0.1],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    padding: EdgeInsets.zero,
                    side: const BorderSide(color: Colors.transparent),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text("編集を保存"),
                ),
              ),
              const SizedBox(
                height: MFSizes.spaceBtwSections,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
