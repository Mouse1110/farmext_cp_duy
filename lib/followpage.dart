import 'package:flutter/material.dart';

class FollowPage extends StatefulWidget {
  const FollowPage({
    Key? key,
  }) : super(key: key);

  @override
  State<FollowPage> createState() => _FollowPageState();
}

class _FollowPageState extends State<FollowPage> {
  int init = 0;
  String title = 'Đang theo dõi';
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 40,
          color: Colors.black.withOpacity(0.05),
          child: Row(
            children: [
              Expanded(
                child: ButtonTab(
                  title: 'Theo dõi',
                  onChange: () {
                    init = 0;
                    title = 'Đang theo dõi';
                    setState(() {});
                  },
                  init: init == 0 ? true : false,
                ),
              ),
              Expanded(
                child: ButtonTab(
                  title: 'Chuyên gia',
                  onChange: () {
                    init = 1;
                    title = 'Đang tư vấn';
                    setState(() {});
                  },
                  init: init == 1 ? true : false,
                ),
              ),
              Expanded(
                child: ButtonTab(
                  title: 'Phòng lab',
                  onChange: () {
                    init = 2;
                    title = 'Không tìm thấy';
                    setState(() {});
                  },
                  init: init == 2 ? true : false,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Text(
                title,
                style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.2),
              ),
              const Spacer(),
              init != 2
                  ? Row(
                      children: [
                        Image.asset(
                          'assets/search.png',
                          width: 16,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Tìm kiếm',
                          style: TextStyle(
                              color: Color.fromRGBO(24, 57, 101, 1),
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1.2),
                        )
                      ],
                    )
                  : const SizedBox(),
            ],
          ),
        )
      ],
    );
  }
}

class ButtonTab extends StatelessWidget {
  final String title;
  final Function onChange;
  final bool init;
  const ButtonTab({
    Key? key,
    required this.onChange,
    required this.title,
    required this.init,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        onChange();
      },
      style: init
          ? ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white))
          : null,
      child: init
          ? Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              height: double.infinity,
              alignment: Alignment.center,
              child: Text(
                title,
                style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.2),
              ),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(4)),
            )
          : Center(
              child: Text(
                title,
                style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.2),
              ),
            ),
    );
  }
}
