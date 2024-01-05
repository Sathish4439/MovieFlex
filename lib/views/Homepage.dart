import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          "lib/image/fontbolt.png",
          fit: BoxFit.cover,
          height: 50,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Text(
              "Trending Movies",
              style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            CarouselSlider.builder(
              itemCount: 5,
              itemBuilder: (context, index, realIndex) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                );
              },
              options: CarouselOptions(
                enlargeCenterPage: true,
                pageSnapping: true,
                height: 300,
                autoPlay: true,
                autoPlayAnimationDuration: Duration(seconds: 3),
              ),
            ), SizedBox(height: 10),
            Text(
              "Top Rated Movies",
              style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 200,
              width: double.infinity,
              child: ListView.builder(
             // Provide a unique key to the ListView.builder
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 200,
                      width: 300, // Set your desired width
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  );
                },
              ),
            ), SizedBox(height: 10),
            Text("Upcomming Movies", style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold),),
             SizedBox(height: 10),
            SizedBox(
              height: 200,
              width: double.infinity,
              child: ListView.builder(
             // Provide a unique key to the ListView.builder
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 200,
                      width: 300, // Set your desired width
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  );
                },
              ),
            ),
           
          ],
        ),
      ),
    );
  }
}
