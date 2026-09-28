import 'package:flutter/material.dart';

import '../data/dummy_products.dart';
import 'products_grid_screen.dart';
import 'product_details_screen.dart';

class ProductsListScreen extends StatelessWidget {
  const ProductsListScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: AppBar(
        title: const Text(
          'Products',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        backgroundColor: const Color(0xFF2563EB),
        foregroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: ProductSearchDelegate());
            },
          ),
          IconButton(
            icon: const Icon(Icons.grid_view_rounded),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, anim1, anim2) =>
                      const ProductsGridScreen(),
                  transitionDuration: Duration.zero,
                ),
              );
            },
          ),
        ],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(14),
        itemCount: dummyProducts.length,
        separatorBuilder: (context, index) => const SizedBox(height: 10),
        itemBuilder: (context, index) {
          final product = dummyProducts[index];
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(7, 0, 0, 0),
                  blurRadius: 6,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 6,
              ),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  width: 60,
                  height: 60,
                  color: const Color(0xFFF1F5F9),
                  child: Image.network(
                    product.imageUrl,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return const Icon(
                        Icons.image_not_supported,
                        size: 24,
                        color: Colors.grey,
                      );
                    },
                  ),
                ),
              ),
              title: Text(
                product.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Color(0xFF1E293B),
                ),
              ),
              subtitle: Text(
                '\$${product.price.toStringAsFixed(0)}',
                style: const TextStyle(
                  color: Color(0xFF2563EB),
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 18,
                color: Color(0xFF94A3B8),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ProductDetailsScreen(product: product),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
