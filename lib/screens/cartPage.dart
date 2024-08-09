import 'package:flutter/material.dart';

import '../request/apiService.dart';


class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  late Future<List<Map<String, dynamic>>> _products;

  @override
  void initState() {
    super.initState();
    _products = ApiService().fetchProducts(); // Fetch data on initialization
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart Page'),
      ),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: _products,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No products available'));
          } else {
            final products = snapshot.data!;
            return ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return ListTile(
                  title: Text(product['ProductName'] ?? 'Unknown'),
                  subtitle: Text('Price: \$${product['PricePerItem'] ?? 0}, Amount: ${product['Amount'] ?? 0}'),
                );
              },
            );
          }
        },
      ),
    );
  }
}
