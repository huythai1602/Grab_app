import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:flutter_application_1/screens/login_screen2.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: 500,
          color: const Color(0xFF17bf61),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {},
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Center(
                  child: SizedBox(
                    width: 290,
                    child: Column(
                      children: const [
                        Text(
                          "Grab",
                          style: TextStyle(
                              fontSize: 48,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          "Siêu ứng dụng đáp ứng mọi nhu cầu",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        Text(
                          "hằng ngày",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 160,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: const [
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.facebook,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 60,
                        ),
                        Text(
                          "Tiếp tục với Facebook",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Image.asset(
                          'assets/images/31.png',
                          width: 25,
                          height: 25,
                        ),
                        const SizedBox(
                          width: 65,
                        ),
                        const Text(
                          "Tiếp tục với Google",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: const [
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.apple,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        Text(
                          "Tiếp tục với Apple",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      height: 0.5,
                      width: 150,
                      decoration: const BoxDecoration(color: Colors.white),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "hoặc",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 0.5,
                      width: 150,
                      decoration: const BoxDecoration(color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen2()),
                      (route) => false,
                    );
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: const [
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.call,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          "Tiếp tục với số điện thoại",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
