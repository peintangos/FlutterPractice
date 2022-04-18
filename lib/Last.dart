// import 'package:flutter/material.dart';
//
// class Product {
//   const Product({required this.name});
//   final String name;
// }
//
// typedef CartChangedCallback = Function(Product product, bool inCart);
//
// class ShoppingListItem extends StatelessWidget {
//   const ShoppingListItem(
//       {required this.product,
//       required this.inCart,
//       required this.onCartChanged,
//       Key? key})
//       : super(key: key);
//
//   final Product product;
//   final bool inCart;
//   final CartChangedCallback onCartChanged;
//
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       onTap: onCartChanged(product, inCart),
//       leading: CircleAvatar(
//         backgroundColor: _getColor(context),
//         child: Text(product.name[0]),
//       ),
//       title: Text(
//         product.name,
//         style: _getTextStyle(context),
//       ),
//     );
//   }
//
//   Color _getColor(BuildContext context) {
//     return inCart ? Colors.blue : Theme.of(context).primaryColor;
//   }
//
//   TextStyle? _getTextStyle(BuildContext context) {
//     if (!inCart) return null;
//
//     return const TextStyle(
//         color: Colors.blue, decoration: TextDecoration.lineThrough);
//   }
// }
//
// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       body: Center(
//         child: ShoppingListItem(
//             product: const Product(name: "chips"),
//             inCart: false,
//             onCartChanged: (product, incart) {}),
//       ),
//     ),
//   ));
// }
