import 'package:flutter/material.dart';

class ManagerPage extends StatelessWidget {
  const ManagerPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(
        height: 20,
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            ButtonManager(
              title: 'Nhật ký',
              icon: 'assets/notebook.png',
              onChange: () {},
            ),
            ButtonManager(
              title: 'Vụ nuôi',
              icon: 'assets/fish.png',
              onChange: () {},
            ),
            ButtonManager(
              title: 'Kho',
              icon: 'assets/warehouse.png',
              onChange: () {},
            ),
            ButtonManager(
              title: 'Thu chi',
              icon: 'assets/expend.png',
              onChange: () {},
            ),
          ],
        ),
      )
    ]);
  }
}

class ButtonManager extends StatelessWidget {
  final String title;
  final String icon;
  final Function onChange;
  const ButtonManager({
    Key? key,
    required this.title,
    required this.icon,
    required this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        onChange();
      },
      child: Container(
        color: Colors.white,
        height: 150,
        width: 150,
        child: Stack(children: [
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 100,
                padding: const EdgeInsets.only(bottom: 20),
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(4, 4),
                        color: Colors.black.withOpacity(0.25),
                        blurRadius: 10,
                      )
                    ]),
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.1,
                      color: Colors.black.withOpacity(0.7)),
                ),
              )),
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 50,
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Image.asset(
                    icon,
                  ),
                ),
              )),
        ]),
      ),
    );
  }
}
