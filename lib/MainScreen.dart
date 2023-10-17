import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(205, 4, 4, 1),
        title: const Text('Digital Mart'),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(203, 106, 9, 1),
                Color.fromRGBO(219, 227, 7, 1)
              ], // Change colors as needed
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          padding:
              const EdgeInsets.all(16.0), // Reduce padding from 120.0 to 16.0
          child: Column(
            children: [
              // Row with 3 Icons and Amount
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.bar_chart, size: 48.0, color: Colors.white),
                  Icon(Icons.file_copy, size: 48.0, color: Colors.white),
                  Icon(Icons.account_balance_wallet,
                      size: 48.0, color: Colors.white),
                ],
              ),
              const SizedBox(height: 100.0),

              // Banner with Shop Name
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                padding: const EdgeInsets.all(30.0),
                height: 100, // Reduce the padding to fit the text
                child: const Text(
                  'Your shop name Pvt LTD',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ), // Maintain the desired height for the banner
              ),
              const SizedBox(height: 40.0),

              // Rows with Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Handle button 1 tap
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      minimumSize:
                          const Size(70.0, 90.0), // Set the button size
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 70.0, // Adjust the width of the icon
                          height: 50.0, // Adjust the height of the icon
                          child: Image.asset(
                              'asset/icons/icon1.png'), // Replace 'your_icon.png' with your image path
                        ),
                        Text('Create Bill'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle button 1 tap
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      minimumSize:
                          const Size(70.0, 90.0), // Set the button size
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 70.0, // Adjust the width of the icon
                          height: 50.0, // Adjust the height of the icon
                          child: Image.asset(
                              'asset/icons/icon2.png'), // Replace 'your_icon.png' with your image path
                        ),
                        Text('All Bill'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle button 1 tap
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      minimumSize:
                          const Size(70.0, 90.0), // Set the button size
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 70.0, // Adjust the width of the icon
                          height: 50.0, // Adjust the height of the icon
                          child: Image.asset(
                              'asset/icons/icon3.png'), // Replace 'your_icon.png' with your image path
                        ),
                        Text('Profit'),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Handle button 1 tap
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      minimumSize:
                          const Size(70.0, 90.0), // Set the button size
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 70.0, // Adjust the width of the icon
                          height: 50.0, // Adjust the height of the icon
                          child: Image.asset(
                              'asset/icons/icon4.png'), // Replace 'your_icon.png' with your image path
                        ),
                        Text('Add Product'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle button 1 tap
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      minimumSize:
                          const Size(70.0, 90.0), // Set the button size
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 70.0, // Adjust the width of the icon
                          height: 50.0, // Adjust the height of the icon
                          child: Image.asset(
                              'asset/icons/icon5.png'), // Replace 'your_icon.png' with your image path
                        ),
                        Text('All Product'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle button 1 tap
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      minimumSize:
                          const Size(70.0, 90.0), // Set the button size
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 70.0, // Adjust the width of the icon
                          height: 50.0, // Adjust the height of the icon
                          child: Image.asset(
                              'asset/icons/icon6.png'), // Replace 'your_icon.png' with your image path
                        ),
                        Text('Out of stock'),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Handle button 1 tap
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      minimumSize:
                          const Size(70.0, 90.0), // Set the button size
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 70.0, // Adjust the width of the icon
                          height: 50.0, // Adjust the height of the icon
                          child: Image.asset(
                              'asset/icons/icon7.png'), // Replace 'your_icon.png' with your image path
                        ),
                        Text('Top Selling'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle button 1 tap
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      minimumSize:
                          const Size(70.0, 90.0), // Set the button size
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 70.0, // Adjust the width of the icon
                          height: 50.0, // Adjust the height of the icon
                          child: Image.asset(
                              'asset/icons/icon8.png'), // Replace 'your_icon.png' with your image path
                        ),
                        Text('Invoice'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle button 1 tap
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      minimumSize:
                          const Size(70.0, 90.0), // Set the button size
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 70.0, // Adjust the width of the icon
                          height: 50.0, // Adjust the height of the icon
                          child: Image.asset(
                              'asset/icons/icon9.png'), // Replace 'your_icon.png' with your image path
                        ),
                        Text('Store Detail'),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }
}
