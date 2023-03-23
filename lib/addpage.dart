import 'package:flutter/material.dart';

class AddPage extends StatelessWidget {
  const AddPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonClick(
          title: 'Tính khoáng',
          icon: 'assets/flask.png',
          click: () {},
          color: const LinearGradient(
            colors: [
              Color.fromRGBO(49, 216, 245, 1),
              Color.fromRGBO(131, 234, 252, 1)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ButtonClick(
          title: 'Tính lượng tôm',
          icon: 'assets/shrimp.png',
          click: () {},
          color: const LinearGradient(
            colors: [
              Color.fromRGBO(49, 245, 98, 1),
              Color.fromRGBO(131, 252, 191, 1)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ButtonClick(
          title: 'Hướng dẫn sử dụng',
          icon: 'assets/open-book.png',
          click: () {},
          color: const LinearGradient(
            colors: [
              Color.fromRGBO(49, 133, 245, 1),
              Color.fromRGBO(131, 183, 252, 1)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ButtonClick(
          title: 'Phản hồi',
          icon: 'assets/feedback.png',
          click: () {},
          color: const LinearGradient(
            colors: [
              Color.fromRGBO(245, 183, 49, 1),
              Color.fromRGBO(252, 224, 131, 1)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        )
      ],
    );
  }
}

class ButtonClick extends StatelessWidget {
  final String title;
  final String icon;
  final Function click;
  final Gradient color;
  const ButtonClick({
    Key? key,
    required this.click,
    required this.icon,
    required this.title,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        click();
      },
      child: Container(
        height: 100,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        margin: const EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
            gradient: color, borderRadius: BorderRadius.circular(12)),
        child: Row(
          children: [
            Image.asset(
              icon,
              width: 48,
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              title,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 2),
            )
          ],
        ),
      ),
    );
  }
}
