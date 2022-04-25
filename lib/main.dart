import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instragram/responsive/mobilescreenLayout.dart';
import 'package:instragram/responsive/responsive_layout_screen.dart';
import 'package:instragram/responsive/webscreenLayout.dart';
import 'package:instragram/screen/login.dart';
import 'package:instragram/screen/sign_upscreen.dart';
import 'package:instragram/utils/colors.dart';
import 'package:firebase_core/firebase_core.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb){
    await Firebase.initializeApp(
      options: const FirebaseOptions(apiKey: "AIzaSyA92_MudpKy7bIWRw60cQNRvTZQoueuUhY",
       appId: "1:696867593746:web:23a731c9e76b125272c2cb", 
       messagingSenderId: "696867593746", projectId: "instragram-6f052", 
       storageBucket: "instragram-6f052.appspot.com"),
        
    );
  }
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instragram Clone',
     debugShowCheckedModeBanner: false,
      
      theme: ThemeData.dark().copyWith(
        backgroundColor: mobileBackgroundColor
      ),
      // home: const ResponsiveLayout(mobilescreenLayout:MobileScrennLayout(), webscreenLayout:WebScrennLayout() ,),
    home:const SignPage()
    );
  }
}

