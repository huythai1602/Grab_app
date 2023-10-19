import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/screens/home_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child:
                        const Icon(Icons.arrow_back, color: Color(0xFF43cebb)),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      "Login",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Create Your Account",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              Image.asset('assets/images/32.png'),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 60,
                child: TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(bottom: 35 / 2),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    hintText: 'Nhập họ và tên',
                    prefixIcon: const Icon(
                      Icons.account_box_outlined,
                      color: Colors.grey,
                    ),
                    filled: true,
                    fillColor: Color(0xFFffffff),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
                child: TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(bottom: 35 / 2),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    hintText: 'Nhập số điện thoại',
                    prefixIcon: const Icon(
                      Icons.call,
                      color: Colors.grey,
                    ),
                    filled: true,
                    fillColor: Color(0xFFffffff),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(bottom: 35 / 2),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    hintText: 'Nhập mật khẩu',
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Colors.grey,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 520,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: const Color(0xFF43cebb),
                  ),
                  child: const Text(
                    "Join Us",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
