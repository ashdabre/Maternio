import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:oopt/login.dart';

import 'Main screens/home.dart';
import 'Profile/Profile_select.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({super.key});

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              if (FirebaseAuth.instance.currentUser!.displayName == null) {
                return ProfileSelection();
              } else {
                return HomePage();
              }
            } else {
              return PhoneHome();
            }
          }),
    );
  }
}
