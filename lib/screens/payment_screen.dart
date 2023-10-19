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
  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 400,
          child: Stack(
            children: [
              Container(
                height: 100,
                color: Colors.white,
              ),
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/24.jpg'),
                  ),
                ),
                height: 275,
                width: 600,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        const Text(
                          'Thanh toán',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        Container(
                          margin: const EdgeInsets.only(right: 15),
                          child: InkWell(
                            onTap: () {},
                            child: const Icon(
                              Icons.settings,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: const Text(
                        'Cách thức thanh toán tiện lợi nhất',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 150,
                left: 20,
                child: Container(
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/12.png')),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  height: 200,
                  width: 380,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: const [
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Activate',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: const [
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Moca Wallet',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          const Spacer(),
                          InkWell(
                            onTap: () {},
                            child: Image.asset('assets/images/plus.png'),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            Container(
              height: 60,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.green,
              ),
              child: Row(
                children: [
                  const SizedBox(
                    width: 15,
                  ),
                  Image.asset(
                    'assets/images/25.png',
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Thêm thẻ',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Expanded(
                        child: Text(
                          'Thanh toán dễ dàng hơn với thẻ tín dụng hoặc ghi nợ',
                          style: TextStyle(fontSize: 13, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 60,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 50,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xFFebebeb),
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset('assets/images/26.png'),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Nạp tiền',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xFFebebeb),
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/images/1.png',
                      color: Colors.green,
                      height: 30,
                      width: 30,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Quét để thanh toán',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 50,
                width: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xFFebebeb),
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/images/27.png',
                      color: Colors.green,
                      height: 30,
                      width: 30,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Gửi',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 50,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xFFebebeb),
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/images/28.png',
                      color: Colors.green,
                      height: 30,
                      width: 30,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Rút tiền',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 50,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xFFebebeb),
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/images/25.png',
                      color: Colors.green,
                      height: 30,
                      width: 30,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Add Card',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          height: 0.5,
          width: double.infinity,
          decoration: const BoxDecoration(color: Color(0xFFe2e2e3)),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          children: const [
            SizedBox(
              width: 20,
            ),
            Text(
              'Đề xuất cho bạn',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            Container(
              height: 180,
              width: 180,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/images/29.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(12),
                color: Colors.blue,
              ),
              child: Container(
                margin: const EdgeInsets.only(top: 20, left: 20, right: 30),
                child: const Text(
                  'Nạp tiền ĐT để giữ kết nối',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 180,
              width: 180,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/images/30.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(12),
                color: Colors.blue,
              ),
              child: Container(
                margin: const EdgeInsets.only(top: 20, left: 20, right: 30),
                child: const Text(
                  'Thanh toán hóa đơn mọi lúc',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          height: 0.5,
          width: double.infinity,
          decoration: const BoxDecoration(color: Color(0xFFe2e2e3)),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          children: const [
            SizedBox(width: 20),
            Text(
              'Giao dịch gần đây',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Center(
          child: Column(
            children: [
              Image.asset('assets/images/14.png'),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Không có hoạt động nào gần đây.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {},
                child: const Text(
                  'Xem các giao dịch trước đó',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
