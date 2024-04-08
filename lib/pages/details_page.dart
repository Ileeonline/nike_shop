// ignore_for_file: avoid_unnecessary_containers, camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_shop/models/shop.dart';

class DetailsPage extends StatefulWidget {
  final Shop shop;
  const DetailsPage({super.key, required this.shop});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  bool isFavourite = false;

  List<String> sizeList = [
    'UK 6',
    'UK 7',
    'UK 8',
    'UK 9',
  ];

  int sizeIndex = 0;

  List<Color> itemColor = [
    Colors.blue[900]!,
    Colors.red,
  ];

  int colorIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            margin: const EdgeInsets.only(left: 6),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[500]!, width: 1.2),
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Icon(Icons.arrow_back_ios_new_rounded),
          ),
        ),
        title: Text(
          widget.shop.name,
          style: GoogleFonts.workSans(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2.0),
        child: Column(
          children: [
            const SizedBox(height: 30),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Size',
                      style: GoogleFonts.workSans(
                          fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      height: 200,
                      width: 60,
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: sizeList.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  sizeIndex = index;
                                });
                              },
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                margin: const EdgeInsets.only(bottom: 8),
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: sizeIndex == index
                                        ? Colors.black
                                        : Colors.grey[700]!,
                                    width: sizeIndex == index ? 3 : 1.2,
                                  ),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: Text(
                                  sizeList[index],
                                  style: GoogleFonts.workSans(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            );
                          }),
                    ),
                  ],
                ),
                Container(
                  child: Stack(
                    children: [
                      Center(
                          child: Image.asset(
                        'assets/images/niketxt.png',
                        height: 300,
                        width: 300,
                      )),
                      Center(
                          child: Image.asset(widget.shop.imgPath, height: 300))
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.shop.price,
                        style: GoogleFonts.workSans(
                            fontSize: 18, fontWeight: FontWeight.w900),
                      ),
                      Text(
                        widget.shop.offer,
                        style: GoogleFonts.workSans(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Colors.red),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 130,
                        height: 50,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: itemColor.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    colorIndex = index;
                                  });
                                },
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 300),
                                  margin: const EdgeInsets.only(left: 8),
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: colorIndex == index
                                            ? Colors.black
                                            : Colors.grey[500]!,
                                        width: colorIndex == index ? 3 : 1.2),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Icon(
                                    Icons.square,
                                    color: itemColor[index],
                                  ),
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isFavourite = !isFavourite;
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 50),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color:
                                isFavourite ? Colors.black : Colors.grey[500]!,
                            width: isFavourite ? 3 : 1.2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(isFavourite
                          ? Icons.bookmark_added
                          : Icons.bookmark_outline),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                widget.shop.description,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  height: 1.5,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const SizedBox(height: 80),
            Container(
              padding:const EdgeInsets.symmetric(horizontal: 120,vertical: 20),
              decoration: BoxDecoration(color: Colors.black,
              borderRadius: BorderRadius.circular(24),
              ),
              child: Text(
                "Add To Cart",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
