import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Product2 {
  const Product2({required this.name});

  final String name;
}

typedef CartChangedCallback2 = Function(Product2 product, bool inCart);

class ShoppingListItem2 extends StatelessWidget {
  ShoppingListItem2(
      {required this.product,
        required this.inCart,
        required this.callback2})
      : super(key: ObjectKey(product));

  final Product2 product;
  final bool inCart;
  final CartChangedCallback2 callback2;

  Color _getColor(BuildContext context) {
    return inCart ? Colors.black12 : Theme.of(context).primaryColor;
  }

  TextStyle? _getTextStyle(BuildContext context) {
    if (!inCart) return null;

    return const TextStyle(
        color: Colors.lightBlue, decoration: TextDecoration.lineThrough);
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        callback2(product, inCart);
      },
      leading: CircleAvatar(backgroundColor: _getColor(context)),
      title: Text(
        product.name,
        style: _getTextStyle(context),
      ),
    );
  }
}

class ShoppingList extends StatefulWidget {
  const ShoppingList({required this.prodcutList, Key? key}) : super(key: key);

  final List<Product2> prodcutList;

  @override
  _ShoppingList createState() => _ShoppingList();
}

class _ShoppingList extends State<ShoppingList> {
  final _shoppingCart = <Product2>{};

  void _handleCartChanged(Product2 product, bool incart) {
    setState(() {
      if (!incart) {
        _shoppingCart.add(product);
      } else {
        _shoppingCart.remove(product);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("AAA")),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: widget.prodcutList.map((Product2 product) {
          return ShoppingListItem2(
              product: product,
              inCart: _shoppingCart.contains(product),
              callback2: _handleCartChanged);
        }).toList(),
      ),
    );
  }
}

void main() {
  Image.asset("images/lake.png",fit: BoxFit.cover);
  runApp(const MaterialApp(
    title: "Sample App",
    home: ShoppingList(
      prodcutList: [
        Product2(name: "Eggs1"),
        Product2(name: "Eggs2"),
        Product2(name: "Eggs3")
      ],
    ),
  ));
}
