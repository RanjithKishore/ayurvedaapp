import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class AuthService{

  final FirebaseAuth _auth=FirebaseAuth.instance;
  


  Stream<FirebaseUser> get user{
    return _auth.onAuthStateChanged;
  }
   //sign in with email

  //register with email and password
 Future registerWithEmailAndPassword(String email,String password)async
 {
   try{
   AuthResult result=await _auth.createUserWithEmailAndPassword(email: email, password: password);
   FirebaseUser user=result.user;
   return user;
   }
   catch(e){
     print(e.toString());
     return null;

   }
 }

 Future signInWithEmailAndPassword(String email,String password) async{
    try{
      AuthResult result=await _auth.signInWithEmailAndPassword(email: email, password: password);
      FirebaseUser user= result.user;
      return user;
    }
    catch(e){
      print(e.toString());
      return null;


    }
 }

 Future signOut()async{
    try{
      return await _auth.signOut();
    }
    catch(e){
      print(e.toString());
      return null;
    }
 }

}