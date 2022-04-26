import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthMethod{
  FirebaseAuth _auth=FirebaseAuth.instance;
  final FirebaseFirestore _firestore=FirebaseFirestore.instance;

  // sign up user

Future<String>signupUser({required String usernsame,
required String email,required String bio,required String password,
// required Uint32List file

})async{
  String res='some error are occur';
  try{
    if(email.isNotEmpty||usernsame.isNotEmpty||bio.isNotEmpty||password.isNotEmpty){
      // register a user
     UserCredential crd =await _auth.createUserWithEmailAndPassword(email: email, password: password);
      // add user to database
      // _firestore.collection('user').add({
      //   'username':usernsame,
      //   'email':email,
      //   'bio':bio,
      //   'password':password,
      //   'file':file,
        // or this method also work
        await _firestore.collection('users').doc(crd.user!.uid).set({
        'username':usernsame,
        'email':email,
        'bio':bio,
        'uid':crd.user!.uid,
        'followers':[],
        'following':[]
        
        // 'file':file,
        });
res= 'sucess';
    }
  }
  catch(err){
return err.toString();
  }
  return res;
}

}