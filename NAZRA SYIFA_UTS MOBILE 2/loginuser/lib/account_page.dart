import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  final String username;

  AccountPage({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Selamat datang!',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'images/char.jpg',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 16),
                  Text(
                    '$username',
                    style: TextStyle(fontSize: 24),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Logout'),
                  ),
                ],
              ),
            ]
        ),
      ),
    );
  }
}
