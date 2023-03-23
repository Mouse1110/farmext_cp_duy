import 'package:flutter/material.dart';

import 'addpage.dart';
import 'followpage.dart';
import 'manager_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int init = 2;
  String title = 'Quản lý';
  PageController controller = PageController(initialPage: 2);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14),
          child: Image.asset(
            'assets/user.png',
          ),
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            color: Colors.black.withOpacity(0.6),
            fontWeight: FontWeight.w700,
            letterSpacing: 1.5,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Image.asset('assets/notification.png'),
          ),
          const SizedBox(
            width: 18,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Image.asset('assets/fullscreen.png'),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: PageView(
        controller: controller,
        onPageChanged: ((value) {
          init = value;
          setState(() {});
        }),
        children: [
          FollowPage(),
          FollowPage(),
          ManagerPage(),
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Giảm giá hấp dẫn',
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.7),
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 1.2),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            border: Border.all(
                              width: 0.5,
                              color: const Color.fromRGBO(24, 57, 101, 1),
                            )),
                        child: const Text(
                          '704 sản phẩm',
                          style: TextStyle(
                              color: const Color.fromRGBO(24, 57, 101, 1),
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1.2),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    Expanded(
                      child: ItemShop(
                        image: 'assets/1.png',
                        title:
                            'Bio PC - BZT - Phân hủy chất thải tôm, cá ao nuôi thủy sản. Làm sạch đáy ao nuôi.',
                        price: '50,000đ',
                      ),
                    ),
                    Expanded(
                      child: ItemShop(
                        image: 'assets/2.jpg',
                        title: 'AQUIMIN SHRIMP - Khoáng chuyên dùng cho tôm',
                        price: '747,600đ',
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Expanded(
                      child: ItemShop(
                        image: 'assets/3.png',
                        title: 'Tăng cường miễn dịch - BZT® PRE-GE',
                        price: '161,500đ',
                      ),
                    ),
                    Expanded(
                      child: ItemShop(
                        image: 'assets/5.jpg',
                        title: 'ZEOCARE-PLUS P (Xử lý môi trường ao nuôi)',
                        price: '974,000đ',
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Expanded(
                      child: ItemShop(
                        image: 'assets/4.png',
                        title: 'Men xử lý nước ao - BZT® AQUA',
                        price: '488,750đ',
                      ),
                    ),
                    Expanded(
                      child: ItemShop(
                        image: 'assets/1.png',
                        title:
                            'Bio PC - BZT - Phân hủy chất thải tôm, cá ao nuôi thủy sản. Làm sạch đáy ao nuôi.',
                        price: '50,000đ',
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          AddPage(),
        ],
      ),
      bottomNavigationBar: Container(
        height: 60,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
                top: BorderSide(
                    color: Colors.black.withOpacity(0.1), width: 0.5))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ButtonBottomBar(
              title: 'Cập nhật',
              icon: 'assets/world.png',
              iconChange: 'assets/world1.png',
              init: init == 0 ? true : false,
              onChange: () {
                init = 0;
                title = 'Cập nhật';
                controller.animateToPage(init,
                    curve: Curves.fastLinearToSlowEaseIn,
                    duration: const Duration(milliseconds: 500));
                setState(() {});
              },
            ),
            ButtonBottomBar(
              title: 'Theo dõi',
              icon: 'assets/red-flag.png',
              iconChange: 'assets/red-flag1.png',
              init: init == 1 ? true : false,
              onChange: () {
                init = 1;
                title = 'Theo dõi';
                controller.animateToPage(init,
                    curve: Curves.fastLinearToSlowEaseIn,
                    duration: const Duration(milliseconds: 500));
                setState(() {});
              },
            ),
            ButtonBottomBar(
              title: 'Quản lý',
              icon: 'assets/windows.png',
              iconChange: 'assets/windows1.png',
              init: init == 2 ? true : false,
              onChange: () {
                init = 2;
                title = 'Quản lý';
                controller.animateToPage(init,
                    curve: Curves.fastLinearToSlowEaseIn,
                    duration: const Duration(milliseconds: 500));
                setState(() {});
              },
            ),
            ButtonBottomBar(
              title: 'eShop',
              icon: 'assets/store.png',
              iconChange: 'assets/store1.png',
              init: init == 3 ? true : false,
              onChange: () {
                init = 3;
                title = 'eShop';
                controller.animateToPage(init,
                    curve: Curves.fastLinearToSlowEaseIn,
                    duration: const Duration(milliseconds: 500));
                setState(() {});
              },
            ),
            ButtonBottomBar(
              title: 'Thêm',
              icon: 'assets/extension.png',
              iconChange: 'assets/extension1.png',
              init: init == 4 ? true : false,
              onChange: () {
                init = 4;
                title = 'Thêm';
                controller.animateToPage(init,
                    curve: Curves.fastLinearToSlowEaseIn,
                    duration: const Duration(milliseconds: 500));
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ItemShop extends StatelessWidget {
  final String title;
  final String price;
  final String image;

  const ItemShop({
    Key? key,
    required this.image,
    required this.price,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          border:
              Border.all(width: 0.5, color: Colors.black.withOpacity(0.25))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(),
          Image.asset(
            image,
            height: 180,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.2),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '60,241đ',
                textAlign: TextAlign.justify,
                style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.lineThrough,
                    letterSpacing: 1.1),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                price,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    color: Color.fromARGB(255, 165, 32, 32).withOpacity(0.7),
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.1),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ButtonBottomBar extends StatelessWidget {
  final String title;
  final String icon;
  final String iconChange;
  final bool init;
  final Function onChange;
  const ButtonBottomBar({
    Key? key,
    required this.title,
    required this.icon,
    required this.iconChange,
    required this.init,
    required this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChange();
      },
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              !init ? icon : iconChange,
              width: 20,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              title,
              style: TextStyle(
                  fontSize: 10,
                  letterSpacing: 1.1,
                  color: !init
                      ? Color.fromRGBO(181, 179, 179, 1)
                      : Color.fromRGBO(24, 57, 101, 1),
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
