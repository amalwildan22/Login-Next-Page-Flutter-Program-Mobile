import 'package:flutter/material.dart';
import 'product_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Muhamad Amal Wildan',
      home: LoginPage(),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blue[50], // Soft blue color
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logic untuk push
                if (usernameController.text == 'user' &&
                    passwordController.text == 'password') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProductPage()),
                  );
                } else {
                  // Menampilkan error jika tidak sesuai
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Invalid Login'),
                    ),
                  );
                }
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
