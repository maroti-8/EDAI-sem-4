import 'package:cab_driver/screens/loginpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfileTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          _signOut();
        },
        child: Text(
          'Logout',
          style: TextStyle(color: Colors.red),
        ),
      ),
    );
  }

  void _signOut() {
    FirebaseAuth.instance.signOut();
    User user = FirebaseAuth.instance.currentUser;
    print('$user');
    runApp(new MaterialApp(
      home: new LoginPage(),
    ));
  }
}
