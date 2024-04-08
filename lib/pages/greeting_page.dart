import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_shop/pages/home_page.dart';

class GreetingPage extends StatelessWidget {
  const GreetingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 200,
            ),
            const Icon(
              Icons.shopping_bag,
              size: 300,
            ),
            const SizedBox(
              height: 80,
            ),
            Text(
              textAlign: TextAlign.center,
              "Welcome to nike,\nwhere your shopping journey begins!",
              style: GoogleFonts.bebasNeue(
                  fontSize: 30, fontWeight: FontWeight.bold),
            ),
           const SizedBox(height: 80,),
            Container(
              padding:const EdgeInsets.all(10),
              decoration:const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                color: Colors.black,
                shape: BoxShape.rectangle,
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.pushReplacement(context, 
                  MaterialPageRoute(builder: (e)=>const HomePage(),),);
                },
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  size: 40,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
