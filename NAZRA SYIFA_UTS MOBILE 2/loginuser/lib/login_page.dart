import 'package:flutter/material.dart';
import 'dashboard_page.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final List<Map<String, String>> _users = [
    {'username': 'Nazra Syifa', 'password': 'Ns12345'},
    {'username': 'Andri', 'password': 'ABC01234'},
    {'username': 'Stranger', 'password': 'St11117'},
  ];

  void _login() {
    String username = _usernameController.text;
    String password = _passwordController.text;

    // Check if user exists in the list
    bool userFound = _users.any((user) =>
      user['username'] == username && user['password'] == password);

    if (userFound) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DashboardPage(username: username),
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Login berhasil'),
          backgroundColor: Colors.green,
          duration: Duration(seconds: 2),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Username atau Password salah'),
          backgroundColor: Colors.red,
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: 'Username'
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: 'Password'
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                  onPressed: _login,
                  child: Text('Login'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}