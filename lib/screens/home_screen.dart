import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_application_1/screens/account_screen.dart';
import 'package:flutter_application_1/screens/action_screen.dart';
import 'package:flutter_application_1/screens/message_screen.dart';
import 'package:flutter_application_1/screens/payment_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  late List<Widget> bodies;
  final urlImages = [
    'https://scr.vn/wp-content/uploads/2020/07/Fantasy-Girl-4K.jpg',
    'https://2.bp.blogspot.com/-rP63zWdVD6g/WlrSp4JKVMI/AAAAAAAAKKc/uyDDsEN8Rf0SNWGfdihkOe4YPGyk3TVHACK4BGAYYCw/s0/anime-girl-2560x1600-original-tiger-7041.jpg',
    'https://anhdepfree.com/wp-content/uploads/2020/11/hinh-nen-anime-hoa-anh-dao-1920x1080.jpg',
  ];
  final urlImages1 = [
    'https://assets.grab.com/wp-content/uploads/sites/11/2020/03/20173813/Buoitrua_Banner-min.jpg',
    'http://kama-software.com/wp-content/uploads/2019/07/grabfood.jpg',
    'https://maycatthit.vn/wp-content/uploads/2019/12/maxresdefault-2.jpg',
  ];
  final urlImages2 = [
    'https://i.pinimg.com/originals/0a/c3/db/0ac3dbf6f00da227b4ac38c680fc9b73.png',
    'https://mir-s3-cdn-cf.behance.net/project_modules/fs/a97a4a99796767.5efae6caa6c97.jpg',
    'http://indiater.com/wp-content/uploads/2019/02/free-creative-fast-food-ads-banner-psd-template.jpg',
  ];
  final urlImages3 = [
    'https://img.freepik.com/free-vector/coffee-drink-social-media-promotion-banner-post-template_279069-217.jpg?size=626&ext=jpg',
    'https://cdn-www.vinid.net/26f1f6f8-vinid_-mua-2-11920x1080-1.jpg',
  ];
  @override
  void initState() {
    bodies = [
      _buildHomeTab(),
      const ActionScreen(),
      const PaymenScreen(),
      const MessageScreen(),
      const AccountScreen(),
    ];
    super.initState();
  }

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: bodies[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          unselectedLabelStyle: TextStyle(color: Colors.grey),
          onTap: (value) {
            return setState(() {
              _selectedIndex = value;
            });
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: 'Trang chủ',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.description),
              label: 'Hoạt động',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.wallet),
              label: 'Thanh toán',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.sms),
              label: 'Tin nhắn',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Tài khoản',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHomeTab() {
    return SingleChildScrollView(
        child: Column(
      children: <Widget>[
        Container(
          height: 100,
          child: Stack(
            children: [
              Container(
                height: 100,
                color: Colors.white,
              ),
              Container(
                height: 50,
                color: Colors.green,
              ),
              Positioned(
                top: 25,
                left: 10,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xFFebebeb),
                  ),
                  width: 50,
                  child: Image.asset('assets/images/1.png'),
                ),
              ),
              Positioned(
                top: 25,
                left: 70,
                child: SizedBox(
                  height: 50,
                  width: 320,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(bottom: 50 / 2),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      hintText: 'Tìm kiếm',
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      suffixIcon: const Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                      filled: true,
                      fillColor: const Color(0xFFebebeb),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 80,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(top: 10, left: 10, right: 20),
                child: InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Image.asset('assets/images/8.png'),
                      const Text('Dành cho bạn'),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/5.png',
                      ),
                      const Text('Đồ ăn'),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/7.png',
                        height: 50,
                      ),
                      const Text('Đặt xe'),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/2.png',
                        height: 50,
                      ),
                      const Text('Giao hàng'),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/9.png',
                        height: 50,
                      ),
                      const Text('Tất cả'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 60,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xFFebebeb),
                  ),
                  height: 80,
                  width: 190,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Kích hoạt'),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Moca',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: Image.asset(
                              'assets/images/10.png',
                              height: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xFFebebeb),
                  ),
                  height: 80,
                  width: 190,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Điểm thưởng'),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            '0',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: Image.asset(
                              'assets/images/11.png',
                              height: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        FutureBuilder<QuerySnapshot>(
          future: FirebaseFirestore.instance.collection('recommend').get(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator(
                color: Colors.red,
              );
            } else {
              var data = snapshot.data?.docs.length;
              if (snapshot.hasData) {
                return CarouselSlider.builder(
                  itemCount: urlImages.length,
                  itemBuilder: (context, index, realIndex) {
                    final urlImage = urlImages[index];

                    return buildImage(urlImage, index);
                  },
                  options: CarouselOptions(height: 200, autoPlay: true),
                );
              }
            }
            return Container();
          },
        ),
        const SizedBox(
          height: 30,
        ),
        InkWell(
          onTap: () {},
          child: Row(
            children: const [
              SizedBox(width: 20),
              Text(
                'Đặt bữa tối từ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Icon(Icons.arrow_forward_rounded),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        CarouselSlider.builder(
          itemCount: urlImages1.length,
          itemBuilder: (context, index, realIndex) {
            final urlImage1 = urlImages1[index];

            return buildImage(urlImage1, index);
          },
          options: CarouselOptions(height: 200, autoPlay: true),
        ),
        const SizedBox(
          height: 30,
        ),
        InkWell(
          onTap: () {},
          child: Row(
            children: const [
              SizedBox(width: 20),
              Text(
                'Món ngon cho bạn',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Icon(Icons.arrow_forward_rounded),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        CarouselSlider.builder(
          itemCount: urlImages2.length,
          itemBuilder: (context, index, realIndex) {
            final urlImage2 = urlImages2[index];

            return buildImage(urlImage2, index);
          },
          options: CarouselOptions(height: 200, autoPlay: true),
        ),
        const SizedBox(
          height: 30,
        ),
        InkWell(
          onTap: () {},
          child: Row(
            children: const [
              SizedBox(width: 20),
              Text(
                'Có thể bạn sẽ thích',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Icon(Icons.arrow_forward_rounded),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        CarouselSlider.builder(
          itemCount: urlImages3.length,
          itemBuilder: (context, index, realIndex) {
            final urlImage3 = urlImages3[index];

            return buildImage(urlImage3, index);
          },
          options: CarouselOptions(height: 200, autoPlay: true),
        ),
      ],
    ));
  }

  Widget buildImage(String urlImage, int index) => InkWell(
        onTap: () {},
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 12),
          color: Colors.grey,
          child: Image.network(
            urlImage,
            fit: BoxFit.cover,
          ),
        ),
      );
}
