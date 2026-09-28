import '../models/product.dart';

final List<Product> dummyProducts = [
  Product(
    id: 1,
    name: 'Nike Air Max',
    price: 120.0,
    brand: 'Nike',
    category: 'Shoes',
    inStock: true,
    description:
        'All day comfort with a modern design. Suitable for everyday wear.',
    imageUrl: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=600',
  ),
  Product(
    id: 2,
    name: 'Travel Backpack',
    price: 60.0,
    brand: 'Urban Gear',
    category: 'Bags',
    inStock: true,
    description:
        'A practical backpack with multiple compartments for daily travel.',
    imageUrl: 'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?w=600',
  ),
  Product(
    id: 3,
    name: 'Wireless Headphones',
    price: 199.0,
    brand: 'SoundMax',
    category: 'Electronics',
    inStock: true,
    description: 'Comfortable wireless headphones with clear sound and long battery life.',
    imageUrl:
        'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=600',
  ),
  Product(
    id: 4,
    name: 'Smart Watch',
    price: 299.0,
    brand: 'TechTime',
    category: 'Wearables',
    inStock: true,
    description: 'A modern smart watch for notifications, activity tracking, and daily use.',
    imageUrl:
        'https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=600',
  ),
  Product(
    id: 5,
    name: 'Sunglasses',
    price: 90.0,
    brand: 'Vision',
    category: 'Accessories',
    inStock: true,
    description: 'Lightweight sunglasses with a simple design for sunny days.',
    imageUrl:
        'https://images.unsplash.com/photo-1511499767150-a48a237f0083?w=600',
  ),
  Product(
    id: 6,
    name: 'Casual Shoes',
    price: 85.0,
    brand: 'StreetStep',
    category: 'Shoes',
    inStock: false,
    description: 'Comfortable casual shoes designed for daily walking and relaxed outfits.',
    imageUrl:
        'https://images.unsplash.com/photo-1525966222134-fcfa99b8ae77?w=600',
  ),
];
