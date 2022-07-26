import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: ShoppingListItemOne(
            product: const Product(name: 'Chips'),
            inCart: true,
            onCartChanged: (product, inCart) {},
          ),
        ),
      ),
    ),
  );
}

class ShoppingListItemOne extends StatelessWidget {
  ShoppingListItemOne({
    required this.product,
    required this.inCart,
    required this.onCartChanged,
  }) : super(key : ObjectKey(product));

  final Product product;
  final bool inCart;
  final CartChangedCallback onCartChanged;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: _getColor(context),
        child: Text(product.name[0]),
      ),
      title: Text(product.name, style: _getTextStyle(context),),
      onTap: onCartChanged(product, inCart),
    );
  }

  Color _getColor(BuildContext context){
    return inCart? Colors.black54 : Theme.of(context).primaryColor;//theme depends on
  }

  TextStyle? _getTextStyle(BuildContext context){
    if(!inCart) return null;
    return const TextStyle(
      color: Colors.black54,
      decoration: TextDecoration.lineThrough,
    );
  }
}

class Product {
  const Product({required this.name});

  final String name;
}

typedef CartChangedCallback = Function(Product product, bool inCart);