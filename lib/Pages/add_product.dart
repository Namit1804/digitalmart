import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() {
  runApp(AddProduct());
}

class AddProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AddProductPage(),
    );
  }
}

class AddProductPage extends StatefulWidget {
  const AddProductPage({super.key});

  @override
  _AddProductPageState createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  final TextEditingController productNameController = TextEditingController();
  final TextEditingController productIdController = TextEditingController();
  final TextEditingController productWeightController = TextEditingController();
  final TextEditingController productQuantityController =
      TextEditingController();
  final TextEditingController productMRPController = TextEditingController();
  final TextEditingController productSellingPriceController =
      TextEditingController();
  final TextEditingController productCostPriceController =
      TextEditingController();

  CollectionReference add_product =
      FirebaseFirestore.instance.collection('add_product');

  void addProduct() async {
    await add_product.add({
      'name': productNameController.text,
      'id': productIdController.text,
      'weight': productWeightController.text,
      'quantity': productQuantityController.text,
      'mrp': productMRPController.text,
      'sellingPrice': productSellingPriceController.text,
      'costPrice': productCostPriceController.text,
    });

    // Clear the text fields after adding the product
    productNameController.clear();
    productIdController.clear();
    productWeightController.clear();
    productQuantityController.clear();
    productMRPController.clear();
    productSellingPriceController.clear();
    productCostPriceController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Add Product'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextFormField(
                  controller: productNameController,
                  decoration: InputDecoration(labelText: 'Product Name'),
                ),
                TextFormField(
                  controller: productIdController,
                  decoration: InputDecoration(labelText: 'Product ID'),
                ),
                TextFormField(
                  controller: productWeightController,
                  decoration: InputDecoration(labelText: 'Product Weight'),
                ),
                TextFormField(
                  controller: productQuantityController,
                  decoration: InputDecoration(labelText: 'Product Quantity'),
                ),
                TextFormField(
                  controller: productMRPController,
                  decoration: InputDecoration(labelText: 'Product MRP'),
                ),
                TextFormField(
                  controller: productSellingPriceController,
                  decoration: InputDecoration(labelText: 'Selling Price'),
                ),
                TextFormField(
                  controller: productCostPriceController,
                  decoration: InputDecoration(labelText: 'Cost Price'),
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: addProduct,
                  child: Text('Add Product'),
                ),
              ],
            ),
          ),
        ));
  }
}
