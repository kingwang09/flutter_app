import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(
    title: "쇼핑 앱",
    home: ShoppingList(products: [
      Product(name: 'Eggs'),
      Product(name: 'Flour'),
      Product(name: 'Chocolate chips'),
    ])
  ));
}

class ShoppingList extends StatefulWidget {
  const ShoppingList({required this.products, super.key});

  final List<Product> products;

  @override
  State<StatefulWidget> createState() => _ShoppingListState();
}

class _ShoppingListState extends State<ShoppingList> {
  final _shoppingCart = <Product>{};

  void _handleCartChanged(Product product, bool inCart){
    setState((){
      if(!inCart){
        _shoppingCart.add(product);
      }else{
        _shoppingCart.remove(product);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("쇼핑 목록"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        children: widget.products.map((product){
          return ShoppingListItem(product: product, inCart: _shoppingCart.contains(product), onCartChanged: _handleCartChanged);
        }).toList(),
      ),
    );
  }
}

class ShoppingListItem extends StatelessWidget {
  ShoppingListItem({
    required this.product,
    required this.inCart,
    required this.onCartChanged,
  }) : super(key : ObjectKey(product));

  final Product product;
  final bool inCart;
  final CartChangedCallback onCartChanged;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: _getColor(context),
        child: Text(product.name[0]),
      ),
      title: Text(product.name, style: _getTextStyle(context),),
      onTap: (){
        onCartChanged(product, inCart);
      },
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