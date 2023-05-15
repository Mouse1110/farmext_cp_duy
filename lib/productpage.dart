import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({
    super.key,
  });

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int init = 0;
  bool detailScreen = false;
  List<dynamic> list = [
    {
      "image": "assets/1.png",
      "title":
          "Bio PC - BZT - Phân hủy chất thải tôm, cá ao nuôi thủy sản. Làm sạch đáy ao nuôi.",
      "price": "50,000đ"
    },
    {
      "image": "assets/2.jpg",
      "title": "AQUIMIN SHRIMP - Khoáng chuyên dùng cho tôm",
      "price": "747,600đ"
    },
    {
      "image": "assets/3.png",
      "title": "Tăng cường miễn dịch - BZT® PRE-GE",
      "price": "161,500đ"
    },
    {
      "image": "assets/5.jpg",
      "title": "ZEOCARE-PLUS P (Xử lý môi trường ao nuôi)",
      "price": "747,600đ"
    },
    {
      "image": "assets/4.png",
      "title": "Men xử lý nước ao - BZT® AQUA",
      "price": "488,750đ"
    },
    {
      "image": "assets/1.png",
      "title":
          "Bio PC - BZT - Phân hủy chất thải tôm, cá ao nuôi thủy sản. Làm sạch đáy ao nuôi.",
      "price": "747,600đ"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        detailScreen = false;
        setState(() {});
        return false;
      },
      child: SingleChildScrollView(
        child: !detailScreen
            ? Column(
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
                  Wrap(
                    children: list.map((e) {
                      int idx = list.indexOf(e);
                      return ItemShop(
                        onClick: () {
                          init = idx;
                          detailScreen = true;
                          setState(() {});
                        },
                        image: e["image"],
                        title: e["title"],
                        price: e['price'],
                      );
                    }).toList(),
                  ),
                ],
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    list[init]["image"],
                    width: double.infinity,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Text(
                          list[init]["title"],
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1.2),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/star.png',
                              width: 16,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              'assets/star.png',
                              width: 16,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              'assets/star.png',
                              width: 16,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              'assets/star.png',
                              width: 16,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              'assets/star.png',
                              width: 16,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Text(
                              '0 | 0 đánh giá',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.2),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text(
                              list[init]["price"],
                              style: TextStyle(
                                  fontSize: 14,
                                  color: const Color.fromARGB(255, 165, 32, 32)
                                      .withOpacity(0.7),
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.2),
                            ),
                            const SizedBox(
                              width: 20,
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
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              Expanded(
                                child: ButtonItem(
                                  title: "Thêm vào giỏ hàng",
                                  press: () {},
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: ButtonItem(
                                  title: "Mua ngay",
                                  press: () {},
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Cửa hàng",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      letterSpacing: 1.1),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Anbinh Bio',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 1.4),
                                ),
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    width: 0.5,
                                    color: const Color.fromARGB(
                                        255, 26, 211, 124)),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Text(
                                'ĐỐI TÁC',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 26, 211, 124),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 1.1),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(),
                        const SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Nhóm',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  letterSpacing: 1.1),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(244, 244, 244, 1),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  child: const Text(
                                    'Trang thiết bị',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 1.1),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Divider(),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Thành phần',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  letterSpacing: 1.1),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(244, 244, 244, 1),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  child: const Text(
                                    'Vi sinh',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 1.1),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(244, 244, 244, 1),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  child: const Text(
                                    'Thành phần khác',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 1.1),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(244, 244, 244, 1),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  child: const Text(
                                    'Enzyme',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 1.1),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Divider(),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Dùng cho',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  letterSpacing: 1.1),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(244, 244, 244, 1),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  child: const Text(
                                    'Thủy sản',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 1.1),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(244, 244, 244, 1),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  child: const Text(
                                    'Tôm Thâm Canh',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 1.1),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Divider(),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                        const Text(
                          'Men vi sinh cắt tảo, giảm khí độc ao nuôi thủy sản',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1.1),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  )
                ],
              ),
      ),
    );
  }
}

class ButtonItem extends StatelessWidget {
  final String title;
  final Function press;
  const ButtonItem({
    super.key,
    required this.press,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        press();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 14),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 15, 95, 161),
          borderRadius: BorderRadius.circular(8),
        ),
        alignment: Alignment.center,
        child: Text(
          title,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w700,
              letterSpacing: 1.1),
        ),
      ),
    );
  }
}

class ItemShop extends StatelessWidget {
  final String title;
  final String price;
  final String image;
  final Function onClick;

  const ItemShop({
    Key? key,
    required this.image,
    required this.price,
    required this.title,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        onClick();
      },
      child: Container(
        height: 300,
        width: width * 0.5,
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
      ),
    );
  }
}
