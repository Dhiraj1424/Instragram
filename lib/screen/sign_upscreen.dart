import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instragram/utils/colors.dart';

import '../widgets/text_field_input.dart';

class SignPage extends StatefulWidget {
  const SignPage({Key? key}) : super(key: key);

  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            children: [
              Flexible(
                child: Container(),
                flex: 2,
              ),
             
              SvgPicture.asset(
                'assets/ic_instagram.svg',
                color: primaryColor,
                height: 64,
              ),
               Stack(
                 children: [
                   const  CircleAvatar(
                     radius: 64,
                     backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNys7iFvBBxifr5E1pgSgnlKxZ8G9HO-47sSR1oW57o1QAXA3YuXsmpVq1WZk9-HkoZls&usqp=CAU',),
                   ),
               
                   Positioned(
                     right: 10,
                     bottom: 4,
                     child: IconButton(icon: Icon(Icons.add_a_photo),
                     onPressed: (){},
                     ),
                   )
                 ],
               ),
                 const SizedBox(
                height: 20,
              ),
              TextInputField(
                hintText: 'Please enter a username',
                textEditingController: _usernameController,
                textInputType: TextInputType.text,
              ),
              const SizedBox(
                height: 20,
              ),
              TextInputField(
                hintText: 'Please enter a email',
                textEditingController: _emailController,
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 20,
              ),
              TextInputField(
                hintText: 'Please enter a bio',
                textEditingController: _bioController,
                textInputType: TextInputType.text,
              ),
              const SizedBox(
                height: 20,
              ),
              TextInputField(
                hintText: 'Please enter a password',
                textEditingController: _passwordController,
                textInputType: TextInputType.text,
                isPass: true,
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  height: 40,
                  width: double.infinity,
                  child: const Text('login'),
                  alignment: Alignment.center,
                  decoration: const ShapeDecoration(
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)))),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Flexible(
                child: Container(),
                flex: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: const Text("Don't have a account?"),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      child: const Text(
                        'Sign up?',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      padding:const  EdgeInsets.symmetric(vertical: 8),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
