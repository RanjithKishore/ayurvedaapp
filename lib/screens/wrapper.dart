import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ayurved/screens/home.dart';
import 'package:provider/provider.dart';

import 'package:ayurved/screens/authenticate.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user =Provider.of<FirebaseUser>(context);
    if(user==null){
      return Authenticate();
    }
    else
      return home();


  }
}
