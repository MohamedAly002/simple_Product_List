import 'package:elevate_task/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: const BorderSide(
            color: Color(0xFFa3bdd4),
            width: 2,
          )),
      child: Stack(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  product.image,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: const TextStyle(
                        color: Color(0xFF323068),
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                    maxLines: 2,
                  ),
                  Text(
                    product.description,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        color: Color(0xFF323068),
                        fontWeight: FontWeight.bold,
                        fontSize: 13),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        'EGP ${product.price}',
                        style: const TextStyle(
                            color: Color(0xFF323068),
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        '100 EGP',
                        style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          color: Color(0xFF6b9cc1),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Text(
                        'Review (${product.rate})',
                        style: const TextStyle(
                          color: Color(0xFF323068),
                        ),
                      ),
                      const Icon(
                        Icons.star,
                        color: Color(0xFFffd800),
                        size: 20,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
        const Positioned(
          top: 8,
          right: 8,
          child: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.favorite_border,
                color: Color(0xFF004087),
                size: 20,
              )),
        ),
        const Positioned(
          bottom: 8,
          right: 8,
          child: CircleAvatar(
              radius: 15,
              backgroundColor: Color(0xFF004087),
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 20,
              )),
        ),
      ]),
    );
  }
}
