import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';
import '../controllers/checkboxcontroller.dart';

class InputField extends StatelessWidget {
  const InputField({
    super.key,
    required this.input,
  });

  final String input;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.065,
      child: TextField(
        controller: TextEditingController(text: input),
        textAlignVertical: TextAlignVertical.center,
        style: const TextStyle(
          overflow: TextOverflow.ellipsis,
          fontSize: 18,
          color: Color(0xFF454545),
        ),
      ),
    );
  }
}

class CheckBoxText extends StatelessWidget {
  const CheckBoxText({
    Key? key,
    required this.id,
    required this.letter,
  }) : super(key: key);

  final String id;
  final String letter;

  @override
  Widget build(BuildContext context) {
    // Initialize the controller
    final CheckBoxController controller = Get.put(CheckBoxController());

    return Obx(() => Row(
          children: [
            Transform.scale(
              scale: 1.7,
              child: Checkbox(
                value: controller.checkboxStates[id] ?? false,
                activeColor: const Color(0xFFEE7D42),
                onChanged: (value) {
                  controller.toggleCheckbox(id);
                },
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                side: const BorderSide(
                  width: 1.5,
                  color: Color(0xFFE8E8E8),
                ),
              ),
            ),
            Text(
              letter,
              style: const TextStyle(fontSize: 24),
            ),
          ],
        ));
  }
}

class YenInput extends StatelessWidget {
  const YenInput({
    super.key,
    required this.price,
  });

  final String price;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        padding: const EdgeInsets.only(left: 10, top: 10),
        width: size.width * 0.4,
        height: size.height * 0.065,
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: const Color(0xFFE8E8E8),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          price,
          style: const TextStyle(
            overflow: TextOverflow.ellipsis,
            fontSize: 21,
            color: Color(0xFF454545),
          ),
        ),
      ),
    );
  }
}

class TimeInput extends StatelessWidget {
  const TimeInput({
    super.key,
    required this.time,
    this.width = 0.4,
  });

  final String time;
  final double width;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        width: size.width * width,
        height: size.height * 0.065,
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: const Color(0xFFE8E8E8),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              time,
              style: TextStyle(
                overflow: TextOverflow.ellipsis,
                fontSize: 21,
                color: width == 0.7 ? const Color(0xFFC7C4C0) : const Color(0xFF454545),
              ),
            ),
            const Icon(
              Icons.keyboard_arrow_down_rounded,
              size: 40,
              color: Color(0xFFC7C4C0),
            )
          ],
        ),
      ),
    );
  }
}

class NoImageContainer extends StatelessWidget {
  const NoImageContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: DottedBorder(
        borderType: BorderType.RRect,
        color: const Color(0xFFE8E8E8),
        strokeWidth: 1.5,
        radius: const Radius.circular(12),
        padding: const EdgeInsets.all(6),
        child: SizedBox(
          width: size.width * 0.25,
          height: size.height * 0.15,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                AntDesign.picture_outline,
                color: Color(0xFF9C9896),
                size: 50,
              ),
              Text(
                "写真を追加",
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SmallImageContainer extends StatelessWidget {
  const SmallImageContainer({super.key, required this.imagelink});

  final String imagelink;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Stack(
        children: [
          Container(
            width: size.width * 0.27,
            height: size.height * 0.16,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(imagelink),
                  fit: BoxFit.cover,
                )),
          ),
          const Positioned(
            top: 8,
            right: 5,
            child: Icon(
              Icons.close,
              color: Color(0xFFE8E8E8),
              size: 25,
            ),
          ),
        ],
      ),
    );
  }
}

class InputTitle extends StatelessWidget {
  const InputTitle({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4, bottom: 4),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 19),
          ),
          const Text(
            "*",
            style: TextStyle(
              fontSize: 18,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}

class InputTTitle extends StatelessWidget {
  const InputTTitle({
    super.key,
    required this.title,
    required this.secondtitle,
  });
  final String title;
  final String secondtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4, bottom: 4),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 18),
          ),
          const Text(
            "*",
            style: TextStyle(
              fontSize: 18,
              color: Colors.red,
            ),
          ),
          Expanded(
            child: Text(
              secondtitle,
              style: const TextStyle(
                fontSize: 18,
                color: Color(0xFF9C9896),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
