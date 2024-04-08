// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_shop/models/shop.dart';

class ShopTile extends StatelessWidget {
  void Function()? onTap;
  final Shop shop;
   ShopTile({super.key,required this.shop,required this.onTap,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
        decoration: BoxDecoration(
          color:const Color(0xffEFEFEF),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Center(child: Image.asset(shop.imgPath,)),
         Padding(
           padding: const EdgeInsets.all(12.0),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text(shop.name,style: GoogleFonts.poppins(fontSize:14,fontWeight:FontWeight.w700,color:Colors.black),),
            Text(shop.price,style: GoogleFonts.poppins(fontSize:12,fontWeight:FontWeight.normal,color:Colors.grey[700],),),
               ],),
               Container(
                 padding:const EdgeInsets.all(10),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(12),
                   color: Colors.white
                 ),
                 child:const Icon(Icons.arrow_forward_ios,),
               ),
             ],
           ),
         )
        ],),
      ),
    );
  }
}