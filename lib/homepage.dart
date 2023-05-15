import 'package:flutter/material.dart';

import 'addpage.dart';
import 'followpage.dart';
import 'manager_page.dart';
import 'productpage.dart';

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
          Material(
            color: Colors.grey,
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  ItemNews(
                      title: 'Tăng diện tích nuôi trồng thủy sản công nghệ cao',
                      image: 'assets/08042023.png'),
                  SizedBox(
                    height: 2,
                  ),
                  ItemNews(
                      title:
                          'Theo Chi cục Thủy sản, 3 tháng đầu năm, sản lượng nuôi trồng thủy sản đạt 5.296 tấn, tăng 4% so với cùng ỳ, đạt 25% so với kế hoạch năm',
                      image: 'assets/08-04-20232.png'),
                  SizedBox(
                    height: 2,
                  ),
                  ItemNews(
                      title:
                          'Với sự phát triển mạnh mẽ, Việt Nam đã trở thành mọt trong những nhà sản xuất tôm lớn nhất trên thế giới, với sản lượng sản xuất đạt hơn 700.000 tấn mỗi năm.',
                      image: 'assets/080420233.png')
                ],
              ),
            ),
          ),
          FollowPage(),
          ManagerPage(),
          ProductPage(),
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

class ItemNews extends StatelessWidget {
  const ItemNews({
    super.key,
    required this.image,
    required this.title,
  });
  final String title;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      padding: const EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Image.asset(
                  'assets/user.png',
                  width: 48,
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Tổng diện tích nuôi trồng thủy sản công nghệ cao',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.5),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        '9 giờ trước',
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.7),
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 1.2),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(title),
          ),
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            image,
            fit: BoxFit.fitWidth,
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Image.asset(
                  'assets/heart.png',
                  width: 18,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  '0',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1.2),
                ),
                Spacer(),
                Text(
                  '0 bình luận',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 1.2),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Divider(),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Image.asset(
                  'assets/heart.png',
                  width: 18,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Thích',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1.2),
                ),
                Spacer(),
                Image.asset(
                  'assets/heart.png',
                  width: 18,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Bình luận',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1.2),
                ),
                Spacer(),
                Image.asset(
                  'assets/heart.png',
                  width: 18,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Chia sẽ',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1.2),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
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
