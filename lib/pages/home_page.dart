import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:interior_designer/pages/cart_page.dart';
import 'package:interior_designer/pages/details_page.dart';
import 'package:interior_designer/resources/utiles.dart';

import '../models/product_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List Productlist = [
    ProductModel(
        title: 'Poodle Chair', imageUrl: 'assets/poodle_chair.jpg', price: 5999),
    ProductModel(
        title: 'Lounge Chair',
        imageUrl: 'assets/lounge_chair.jpeg',
        price: 6999),
    ProductModel(
        title: 'Poulain Chair',
        imageUrl: 'assets/Poulain_Chair.png',
        price: 3499),
    ProductModel(
        title: 'Thomas Chair',
        imageUrl: 'assets/thomas-chair.jpg',
        price: 3999),
    ProductModel(
        title: 'Wings Fancy Chair',
        imageUrl: 'assets/wings_fancy_chair.webp',
        price: 4999),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.sort_outlined,
              size: 30,
            )),
        title: Text(
          AppUtiles.AppName,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.dark_mode_outlined,
                color: Colors.black,
                size: 30,
              )),
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> CartPage() ));
              },
              icon: Icon(
                Icons.shopping_cart_outlined,
                size: 30,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, top: 20),
              child: Text(
                'Furniture in \nUnique Style',
                style: TextStyle(
                    fontSize: 40,
                    color: AppUtiles.secondaryColor,
                    fontWeight: FontWeight.bold,
                    wordSpacing: -2),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 200,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayInterval: Duration(seconds: 4),
                  autoPlayAnimationDuration: Duration(milliseconds: 900),
                  autoPlayCurve: Curves.easeIn,
                  enableInfiniteScroll: true,
                ),
                items: [
                  // 'assets/sale_1.jpeg',
                  'assets/sale_2.jpeg',
                  'assets/sale_4.jpeg',
                ].map((imageUrl) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Image.asset(
                        imageUrl,
                        fit: BoxFit.cover,
                      );
                    },
                  );
                }).toList(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ListView.builder(
              itemCount: Productlist.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: ((context, index) {
                final product = Productlist[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductDetailsPage(
                                  imageUrl: product.imageUrl,
                                  title: product.title,
                                  price: product.price,
                                )));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 120,
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.withOpacity(0.5)),
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    child: Row(
                      children: [
                        Column(children: [
                          Image.asset(
                            product.imageUrl,
                            fit: BoxFit.contain,
                            width: 120,
                            height: 110,
                          ),
                        ]),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 16,
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 1.8,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  product.title,
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                Text(
                                  'Ensure that Firebase Authentication is enabled and configured correctly in the Firebase Console',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.black),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('RS ${product.price}',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: AppUtiles.secondaryColor)),
                                    Icon(
                                      Icons.shopping_bag_outlined,
                                      color: AppUtiles.primaryColor,
                                      size: 30,
                                    )
                                  ],
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
