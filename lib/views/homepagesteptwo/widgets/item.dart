import 'package:flutter/material.dart';

import '../data/model/product_model.dart';


class ProudactItem extends StatelessWidget {
  final ProductsTwo product;
  const ProudactItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    print("ProudactItem !!!!!!!!!!!!!!");
    return SizedBox(
      height: 150,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 5,
          margin: EdgeInsets.all(5),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 70,
                          width: 70,
                          child: Image.network(
                            product.thumbnail.toString(),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              product.brand.toString(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: product.images!.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return SizedBox(
                          height: 50,
                          width: 50,
                          child: Card(
                              elevation: 5,
                              child: Image.network(
                                product.images![index].toString(),
                                scale: 1,
                              )));
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
