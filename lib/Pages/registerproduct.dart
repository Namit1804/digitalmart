import 'package:flutter/services.dart';

import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AddProducts());
}

class AddProducts extends StatelessWidget {
  Future<void> scanBarcodeNormal() async {
    String barcodeScanRes;
    barcodeScanRes = await digital_mart.scanBarcode(
      '#ff6666',
      'cancel',
      true,
      ScanMode.BARCODE,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Add Inventory'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back), // Back button icon
          onPressed: () {
            Navigator.of(context).pop(); // Back button functionality
          },
        ),
      ),
      body: Builder(
          builder: (context) => Container(
              alignment: Alignment.topCenter,
              child: Flex(
                direction: Axis.vertical,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Scan Barcode'),
                  ),
                ],
              ))),
    ));
  }
}

class ScanMode {}
