import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/account_screen.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:flutter_application_1/screens/message_screen.dart';
import 'package:flutter_application_1/screens/payment_screen.dart';

class ActionScreen extends StatefulWidget {
  const ActionScreen({super.key});

  @override
  State<ActionScreen> createState() => _ActionScreenState();
}

class _ActionScreenState extends State<ActionScreen> {
  int _selectedIndex = 0;
  late List<Widget> bodies;
  @override
  void initState() {
    bodies = [
      Container(),
      _buildActionScreen(),
      Container(),
      Container(),
      Container(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Text(
              'Hoạt động',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: 80,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(
                      Icons.history,
                      color: Colors.black,
                    ),
                    Text(
                      'Lịch sử',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
        body: _buildActionScreen(),
      ),
    );
  }
}

Widget _buildActionScreen() {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset('assets/images/14.png'),
        const Text(
          'Hiện vẫn chưa có hoạt động nào',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.center,
          width: 350,
          child: const Text(
            textAlign: TextAlign.center,
            'Hoạt động sẽ xuất hiện khi bạn sử dụng các dịch vụ của chúng tôi.',
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    ),
  );
}
