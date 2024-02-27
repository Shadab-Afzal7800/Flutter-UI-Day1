import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.black87,
            )),
      ),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(30))),
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Find Your',
                  style: TextStyle(color: Colors.black87, fontSize: 25),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Inspiration',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(244, 243, 243, 1),
                      borderRadius: BorderRadius.circular(15)),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black87,
                        ),
                        hintText: "Search you're looking for",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15)),
                  ),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Promo Today',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      promoCard(
                          'assets/images/cristofer-maximilian-NSKP7Gwa_I0-unsplash.jpg'),
                      promoCard(
                          'assets/images/eileen-pan-5d5DSRQ5dUc-unsplash.jpg'),
                      promoCard(
                          'assets/images/jon-tyson-QL0FAxaq2z0-unsplash.jpg'),
                      promoCard(
                          'assets/images/liam-nguyen-C99Ma2u-VgQ-unsplash.jpg'),
                      promoCard('assets/images/nik-z1d-LP8sjuI-unsplash.jpg'),
                      promoCard(
                          'assets/images/prateek-katyal-FcdtuGf7TEc-unsplash.jpg')
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              'assets/images/cj-dayrit-xX2aYSBsyKo-unsplash.jpg'))),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            stops: [
                              0.1,
                              0.9
                            ],
                            colors: [
                              Colors.black.withOpacity(.8),
                              Colors.black.withOpacity(.1)
                            ])),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          'Best Designs',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}

Widget promoCard(image) {
  return AspectRatio(
    aspectRatio: 2.62 / 3,
    child: Container(
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image))),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
              0.1,
              0.9
            ], colors: [
              Colors.black.withOpacity(.8),
              Colors.black.withOpacity(.1)
            ])),
      ),
    ),
  );
}
