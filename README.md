# E-Commerce Flutter Application

A modular and clean Flutter application for an e-commerce platform, featuring user authentication and product catalog screens.

## 📁 Project Structure

The project follows a modular directory structure where each screen is isolated in its own subfolder:

```text
lib/
├── data/
│   └── dummy_products.dart
├── models/
│   └── product.dart
├── screens/
│   ├── forgot_password/
│   │   └── forgot_password_screen.dart
│   ├── login/
│   │   └── login_screen.dart
│   ├── product_details/
│   │   └── product_details_screen.dart
│   ├── product_grid/
│   │   └── products_grid_screen.dart
│   └── product_list/
│       └── products_list_screen.dart
└── main.dart