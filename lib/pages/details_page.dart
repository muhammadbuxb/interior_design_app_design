import 'package:flutter/material.dart';

class ProductDetailsPage extends StatefulWidget {
  final String title;
  final String imageUrl;
  final int price;
  const ProductDetailsPage(
      {super.key,
      required this.title,
      required this.imageUrl,
      required this.price});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  String selectedColor = '';

  List<int> color = [1, 2, 3];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        height: 70,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.3)
        ),
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '\$ ${widget.price}',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              
                onPressed: () {}, 
                child: Text(
                  'Checkout',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ))
          ],
        ),
      ),
      body: Stack(
        children: [
          Image.asset(
            widget.imageUrl,
            width: MediaQuery.of(context).size.width,
            height: 350,
            fit: BoxFit.cover,
          ),
          ListView(
            children: [
              const SizedBox(
                height: 300,
              ),
              Container(
                // height: MediaQuery.of(context).size.height / 1.2,
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          flex: 3,
                          child: Text(
                            widget.title,
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Flexible(
                            flex: 1, child: Icon(Icons.favorite_border_rounded))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedColor = 'blue';
                          });
                        },
                        child: CircleAvatar(
                          backgroundColor: selectedColor == 'blue'
                              ? Colors.black
                              : Colors.white,
                          radius: 20,
                          child: Center(
                            child: CircleAvatar(
                              backgroundColor: Colors.blue,
                              radius: 15,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedColor = 'yellow';
                          });
                        },
                        child: CircleAvatar(
                          backgroundColor: selectedColor == 'yellow'
                              ? Colors.black
                              : Colors.white,
                          radius: 20,
                          child: Center(
                            child: CircleAvatar(
                              backgroundColor: Colors.yellow,
                              radius: 15,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedColor = 'red';
                          });
                        },
                        child: CircleAvatar(
                          backgroundColor: selectedColor == 'red'
                              ? Colors.black
                              : Colors.white,
                          radius: 20,
                          child: Center(
                            child: CircleAvatar(
                              backgroundColor: Colors.red,
                              radius: 15,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'You can also place payment configurations under your assets folder and load them at runtime. Suppose that you add a JSON file with the name google_pay_config.json to your assets folder to configure your Google Pay integration. You can load it and use it to create a PaymentConfiguration object for the button',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ]),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 30, 10, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back)),
                  radius: 25,
                  backgroundColor: Colors.white,
                ),
                CircleAvatar(
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.shopping_cart_outlined)),
                  radius: 25,
                  backgroundColor: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
