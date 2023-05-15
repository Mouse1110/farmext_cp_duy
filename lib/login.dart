import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initCheckLience();
  }

  final dio = Dio();

  Future<bool> getHttp() async {
    try {
      final response = await dio.get('http://103.221.220.157:2005/farmext');
      print(response);
      if (response.data["code"] == "000" || response.data["code"] == 000) {
        return true;
      } else {
        _showMyDialog(context, response.data["data"], 'Thoát ra');
        return false;
      }
    } catch (Exception) {
      _showMyDialog(context,
          'Hiện tại không truy cập được, hãy kiểm tra lại lience', 'Thoát ra');
      return false;
    }
  }

  Future initCheckLience() async {
    try {
      final result = await InternetAddress.lookup('example.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        print('connected');
      }
    } on SocketException catch (_) {
      print('not connected');
    }
  }

  Future<void> _showMyDialog(
      BuildContext context, String title, String button) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Thông báo'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(title),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text(button),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(189, 214, 219, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Đăng nhập',
          style: TextStyle(
            fontSize: 18,
            color: Colors.black.withOpacity(0.6),
            fontWeight: FontWeight.w700,
            letterSpacing: 1.5,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 150),
        padding: const EdgeInsets.symmetric(horizontal: 30),
        decoration: const BoxDecoration(
            color: Color.fromRGBO(40, 103, 197, 1),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32), topRight: Radius.circular(32))),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'Xin chào',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1.2),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Nhập số điện thoại để đăng nhập sử dụng dịch vụ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 1.2),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(color: Colors.grey)),
                  child: const TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: "Số điện thoại",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  minimumSize: Size(double.infinity, 40),
                ),
                child: const Text(
                  'Đăng nhập',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                onPressed: () {
                  getHttp().then((value) {
                    if (value)
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
