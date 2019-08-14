import 'package:flutter/material.dart';
import '../model/model.dart';
import '../utils/style.dart';
import '../utils/customIcons.dart';

class ProductDetail extends StatelessWidget {
  final Product product;

  ProductDetail({this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Hero(
            tag: "bg",
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Color(0xFFFFC5C5),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        left: 18, right: 18, top: 50, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          product.type,
                          style: AppStyle.appbarStyle,
                        ),
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            CustomIcons.cart,
                            size: 18,
                          ),
                        )
                      ],
                    ),
                  ),
                  Hero(
                    tag: product.name,
                    child: Image.asset(
                      product.imgUrl,
                      width: 280,
                      height: 250,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    product.name,
                    style: AppStyle.headingStyle,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Top fuel 9.9 XX1 AXS is top tiew full auto"
                    "suspension carbon mountain bike.",
                    style: AppStyle.descStyle,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                      "It's also spec'd with high—end ROCkShox"
                      "suspension and lots of carbon—including"
                      "the wheels, bars, and shift levers. You'll fly"
                      "through singletrack and rip descents on"
                      "this bike",
                      style: AppStyle.descStyle),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "\$${product.price}",
                        style: AppStyle.headingStyle,
                      ),
                      FlatButton(
                        child: Text("Add to cart".toUpperCase(),
                            style: AppStyle.flatButtonStyle),
                        onPressed: () {},
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
