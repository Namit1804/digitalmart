import 'package:digital_mart/MainScreen.dart';
import 'package:digital_mart/Pages/add_product.dart';
import 'package:digital_mart/Pages/registerproduct.dart';
import 'package:digital_mart/Pages/view_product.dart';
import 'package:digital_mart/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

//import 'login.dart';
//mport 'singup.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'registerproduct',
      routes: {
        //'login': (context) => const MyLogin(),
        //'singup': (context) => const CreateAccountPage(),
        //'MainScreen': (context) => const MyHomePage(),
        //'add_product': (context) => const AddProductPage(),
        //'veiw_product': (context) => const FetchData()
        'registerproduct': (context) => AddProducts()
      },
    );
  }
}
