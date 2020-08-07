import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'org/personal/shoppinglist/product.dart';
import 'org/personal/shoppinglist/shopping-list.dart';

void main() {
  runApp(MaterialApp(
    title: 'Shopping App',
    home: ShoppingList(
      products: <Product>[
        Product(name: 'Eggs'),
        Product(name: 'Flour'),
        Product(name: 'Chocolate chips'),
      ],
    ),
  ));
}
