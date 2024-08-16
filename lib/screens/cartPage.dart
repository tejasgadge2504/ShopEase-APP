import 'package:flutter/material.dart';
import '../request/apiService.dart';

class CartPage extends StatefulWidget {
  final String url;
  const CartPage({super.key, required this.url});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  late Future<List<Map<String, dynamic>>> _products;

  @override
  void initState() {
    super.initState();
    _products = ApiService().fetchProducts(widget.url); // Fetch data on initialization
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

            // Calculate the total price, ensuring to handle null values
            final totalPrice = products.fold<double>(
              0.0,
                  (sum, product) {
                final pricePerItem = product['Amount'] as num? ?? 0;
                return sum + pricePerItem.toDouble();
              },
            );

            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Total Price:  ₹ ${totalPrice.toStringAsFixed(2)}',

                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      final product = products[index];

                      return ListTile(
                        title: Text(product['ProductName'] ?? 'Unknown',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Price:  ₹ ${(product['Amount'] as num? ?? 0).toStringAsFixed(2)}, ProductID: ${product['ProductID'] ?? 'N/A'}',
                            ),
                            Text(
                              'SectionNo. ${product['SectionNo'] ?? 'N/A'} - ${product['SectionWard'] ?? 'N/A'}',
                            ),
                          ],
                        ),

                      );
                    },
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}