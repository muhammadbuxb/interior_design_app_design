import 'package:flutter/material.dart';
import 'package:interior_designer/pages/user_details_screen.dart';
import 'package:interior_designer/resources/utiles.dart';
import '../models/product_model.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final List<ProductModel> Productlist = [
    ProductModel(
        title: 'Poodle Chair',
        imageUrl: 'assets/poodle_chair.jpg',
        price: 5999),
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
        bottomSheet: Container(
            height: 180,
            decoration: BoxDecoration(
                color: Colors.grey.shade300, 
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )
                ),
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sub Total',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      'RS 13050',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Delivery Fee',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      'RS 300',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      'RS 13350',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  width: 350,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () { 
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> UserDetailsScreen() ));
                     },
                    child: Text(
                      "Check Out",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppUtiles.primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
                
              ],
            )),
        body: Stack(children: [
          Image.asset(
            'assets/sale_4.jpeg',
            width: MediaQuery.of(context).size.width,
            height: 250,
            fit: BoxFit.cover,
          ),
          ListView(children: [
            const SizedBox(
              height: 230,
            ),
            ListView.builder(
              itemCount: Productlist.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: ((context, index) {
                final product = Productlist[index];
                return Container(
                  width: MediaQuery.of(context).size.width,
                  height: 120,
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.symmetric(horizontal: 8),
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
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                product.title,
                                style: const TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              const Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CircleAvatar(
                                    radius: 15,
                                    child: Center(
                                      child: Text(
                                        '-',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    '5',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  CircleAvatar(
                                    radius: 15,
                                    child: Center(
                                      child: Text(
                                        '+',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                ],
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
                                  const Icon(
                                    Icons.delete,
                                    color: Colors.red,
                                    size: 30,
                                  )
                                ],
                              ),
                            ],
                          )),
                    ],
                  ),
                );
              }),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back)),
                  radius: 25,
                  backgroundColor: Colors.white,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 8,
                ),
                Container(
                    width: 200,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: const Center(
                        child: Text(
                      'Cart',
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    ))),
              ],
            ),
          ),
        ]));
  }
}
