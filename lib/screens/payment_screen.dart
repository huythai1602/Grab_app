import 'package:flutter/material.dart';

class PaymenScreen extends StatefulWidget {
  const PaymenScreen({super.key});

  @override
  State<PaymenScreen> createState() => _PaymenScreenState();
}

class _PaymenScreenState extends State<PaymenScreen> {
  int _selectedIndex = 0;
  late List<Widget> bodies;
  @override
  void initState() {
    bodies = [
      Container(),
      Container(),
      _buildPaymenScreen(),
      Container(),
      Container(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildPaymenScreen(),
    );
  }
}

Widget _buildPaymenScreen() {
  return SafeArea(
    child: Column(
      children: <Widget>[
        Container(
          height: 400,
          width: 500,
          child: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/12.png'),
                  ),
                ),
                height: 50,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Thanh toán',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Icon(Icons.settings),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text('Cách thức thanh toán tiện lợi nhất'),
                  ],
                ),
              ),
              Container(
                height: 100,
                color: Colors.white,
              ),
              Positioned(
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/13.png'),
                    ),
                  ),
                  height: 80,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
