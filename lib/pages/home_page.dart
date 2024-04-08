// ignore_for_file: prefer_final_fields, unused_field, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_shop/models/shop.dart';
import 'package:nike_shop/widgets/shop_tile.dart';
import 'details_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> tabsList = [
    'All',
    'Running',
    'Sneakers',
    'Formals',
    'Casuals',
  ];

  int currentIndex = 0;

  void navigateToDetailsPage(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (e) => DetailsPage(
          shop: shopItems[index],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (context) {
          return GestureDetector(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: Container(
              margin: const EdgeInsets.only(left: 6),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[500]!, width: 1.2),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset('assets/images/drawer.png'),
            ),
          );
        }),
        title: Image.asset('assets/images/nike.png',),
        centerTitle: false,
        actions: [
          Container(
            padding: const EdgeInsets.all(15),
            margin: const EdgeInsets.only(right: 8),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[500]!, width: 1.2),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset('assets/images/shopping.png'),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            const SizedBox(
              height: 70,
            ),
            const CircleAvatar(
              radius: 50,
              child: Icon(
                Icons.person,
                size: 50,
              ),
            ),
            ListView(
              shrinkWrap: true,
              children: [
                ListTile(
                  title: Center(
                      child: Text(
                    'Ilyas Khan',
                    style: GoogleFonts.poppins(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  )),
                  subtitle: Center(
                      child: Text(
                    'IlyasKhanswb@gmail.com',
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  )),
                )
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: const Color(0xffEFEFEF),
                  ),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                '20% ',
                                style: GoogleFonts.poppins(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text(
                                'Discount',
                                style: GoogleFonts.bebasNeue(
                                    fontSize: 28,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                          Text(
                            'On your first purchase',
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 40, vertical: 10),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              'Shop Now',
                              style: GoogleFonts.bebasNeue(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        'assets/images/Green 1.png',
                        height: 170,
                        width: 170,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            width: double.infinity,
            height: 50,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: tabsList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    child: currentIndex == index
                        ? AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                            ),
                            margin: const EdgeInsets.only(
                              left: 6,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                color: Colors.black,
                                border: Border.all(
                                    color: currentIndex == index
                                        ? Colors.deepPurple[300]!
                                        : Colors.black,
                                    width: 3)),
                            child: Center(
                                child: Text(
                              tabsList[index],
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: currentIndex == index
                                      ? FontWeight.w900
                                      : FontWeight.normal),
                            )),
                          )
                        : Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                            ),
                            margin: const EdgeInsets.only(
                              left: 6,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Center(
                              child: Text(
                                tabsList[index],
                                style: GoogleFonts.poppins(
                                    color: Colors.grey[700], fontSize: 18),
                              ),
                            ),
                          ),
                  );
                }),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                height: double.infinity,
                width: double.infinity,
                child: GridView.builder(
                  itemCount: shopItems.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: .8,
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                  ),
                  itemBuilder: (context, index) {
                    return ShopTile(
                      shop: shopItems[index],
                      onTap: () => navigateToDetailsPage(index),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
