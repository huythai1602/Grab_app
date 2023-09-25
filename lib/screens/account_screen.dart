import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 50),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () {},
                child: Image.asset(
                  'assets/images/19.png',
                  width: 60,
                  height: 60,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  const Text(
                    "Phạm Huy Thái",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/20.png',
                          height: 40,
                          width: 40,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Đăng ký',
                          style: TextStyle(fontSize: 18),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(Icons.arrow_forward_ios, size: 16),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          Container(
            height: 110,
            margin:
                const EdgeInsets.only(top: 20, left: 15, bottom: 20, right: 15),
            decoration: BoxDecoration(
                color: const Color(0xFFBEE9FC),
                borderRadius: BorderRadius.circular(12)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/images/21.png',
                      height: 30,
                      width: 30,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Expanded(
                      child: Text(
                        textAlign: TextAlign.left,
                        'Hãy đảm bảo bạn luôn có quyền truy cập tài khoản của mình.',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 48,
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        'Thiết lập email khôi phục',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Ưu đãi và tiết kiệm',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Rewards',
                            style: TextStyle(fontSize: 18),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 0.5,
                        width: double.infinity,
                        decoration:
                            const BoxDecoration(color: Color(0xFFe2e2e3)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Text(
                            'Gói hội viên',
                            style: TextStyle(fontSize: 18),
                          ),
                          const Spacer(),
                          Container(
                            alignment: Alignment.center,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(12)),
                            child: const Text(
                              'New',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 0.5,
                        width: double.infinity,
                        decoration:
                            const BoxDecoration(color: Color(0xFFe2e2e3)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Thử thách',
                            style: TextStyle(fontSize: 18),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 0.5,
                        width: double.infinity,
                        decoration:
                            const BoxDecoration(color: Color(0xFFe2e2e3)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Tài khoản của tôi',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text(
                            'Thành viên Ưu đãi',
                            style: TextStyle(fontSize: 18),
                          ),
                          const Spacer(),
                          Text(
                            '0 Điểm',
                            style: TextStyle(fontSize: 16),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 0.5,
                        width: double.infinity,
                        decoration:
                            const BoxDecoration(color: Color(0xFFe2e2e3)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Text(
                            'Yêu thích',
                            style: TextStyle(fontSize: 18),
                          ),
                          const Spacer(),
                          Container(
                            alignment: Alignment.center,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(12)),
                            child: const Text(
                              'New',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 0.5,
                        width: double.infinity,
                        decoration:
                            const BoxDecoration(color: Color(0xFFe2e2e3)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Phương thức thanh toán',
                            style: TextStyle(fontSize: 18),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 0.5,
                        width: double.infinity,
                        decoration:
                            const BoxDecoration(color: Color(0xFFe2e2e3)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Đã đặt trước',
                            style: TextStyle(fontSize: 18),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 0.5,
                        width: double.infinity,
                        decoration:
                            const BoxDecoration(color: Color(0xFFe2e2e3)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Địa điểm đã lưu',
                            style: TextStyle(fontSize: 18),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 0.5,
                        width: double.infinity,
                        decoration:
                            const BoxDecoration(color: Color(0xFFe2e2e3)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Số liên lạc khẩn cấp',
                            style: TextStyle(fontSize: 18),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 0.5,
                        width: double.infinity,
                        decoration:
                            const BoxDecoration(color: Color(0xFFe2e2e3)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Trung tâm doanh nghiệp',
                            style: TextStyle(fontSize: 18),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 0.5,
                        width: double.infinity,
                        decoration:
                            const BoxDecoration(color: Color(0xFFe2e2e3)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Tổng quát',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Trung tâm trợ giúp',
                            style: TextStyle(fontSize: 18),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 0.5,
                        width: double.infinity,
                        decoration:
                            const BoxDecoration(color: Color(0xFFe2e2e3)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Cài đặt',
                            style: TextStyle(fontSize: 18),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 0.5,
                        width: double.infinity,
                        decoration:
                            const BoxDecoration(color: Color(0xFFe2e2e3)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Ngôn ngữ',
                            style: TextStyle(fontSize: 18),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 0.5,
                        width: double.infinity,
                        decoration:
                            const BoxDecoration(color: Color(0xFFe2e2e3)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Chia sẻ phản hồi',
                            style: TextStyle(fontSize: 18),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 0.5,
                        width: double.infinity,
                        decoration:
                            const BoxDecoration(color: Color(0xFFe2e2e3)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Cơ hội',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Text(
                            'Chung tay sống xanh',
                            style: TextStyle(fontSize: 18),
                          ),
                          const Spacer(),
                          Container(
                            alignment: Alignment.center,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(12)),
                            child: const Text(
                              'New',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 0.5,
                        width: double.infinity,
                        decoration:
                            const BoxDecoration(color: Color(0xFFe2e2e3)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Lái xe cùng Grab',
                            style: TextStyle(fontSize: 18),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 0.5,
                        width: double.infinity,
                        decoration:
                            const BoxDecoration(color: Color(0xFFe2e2e3)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
