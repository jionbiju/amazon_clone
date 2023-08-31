import 'package:amazon_clone/common/widgets/costom_button.dart';
import 'package:amazon_clone/common/widgets/coustom_textfield.dart';
import 'package:amazon_clone/constants/global_variables.dart';
import 'package:flutter/material.dart';

enum Auth{
  signin,
  signup,
}

class AuthScreen extends StatefulWidget {
  static const routeName='auth-screen';
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Auth _auth=Auth.signup;
  final _signUpFornKey=GlobalKey<FormState>();
  final _signInFornKey=GlobalKey<FormState>();
  final TextEditingController _emailcontroller=TextEditingController();
  final TextEditingController _passwordcontroller=TextEditingController();
  final TextEditingController _namecontroller=TextEditingController();

  void dispose(){
    super.dispose();
    _emailcontroller;
    _passwordcontroller;
    _namecontroller;
  }



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: GlobalVariables.greyBackgroundCOlor,
      body: SafeArea(child: Padding(
        padding:const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Welcome', style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),),
            ListTile(
              tileColor: _auth==Auth.signup?
             GlobalVariables.backgroundColor:
             GlobalVariables.greyBackgroundCOlor,
              title:const Text('Create account',style: TextStyle(
                fontWeight: FontWeight.bold,
              ),),
              leading: Radio(
              activeColor: GlobalVariables.secondaryColor,  
              value: Auth.signup,
              groupValue: _auth, 
              onChanged: (Auth? val){
                setState(() {
                  _auth=val!; 
                });
              },),
            ),
            if(_auth==Auth.signup)
            Container(
              color: GlobalVariables.backgroundColor,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                 key:_signUpFornKey ,
                 child: Column(
                  children: [
                    CostomTextField(
                      hintText: 'Name',
                      controller: _namecontroller),
                      const SizedBox(height: 10,),
                    CostomTextField(
                      hintText: 'Email',
                      controller: _emailcontroller),
                       const SizedBox(height: 10,),
                      CostomTextField(
                      hintText: 'Password',
                      controller: _passwordcontroller),
                      const SizedBox(height: 10,),
                      CostomButton(text: 'SignUp', onTap: (){
                        
                      })
                  ],
                 ),),
              ),
            ),
            ListTile(
              tileColor: _auth==Auth.signin?
             GlobalVariables.backgroundColor:
             GlobalVariables.greyBackgroundCOlor,
              title:const Text('Sign-In',style: TextStyle(
                fontWeight: FontWeight.bold,
              ),),
              leading: Radio(
              activeColor: GlobalVariables.secondaryColor,  
              value: Auth.signin,
              groupValue: _auth, 
              onChanged: (Auth? val){
                setState(() {
                  _auth=val!; 
                });
              },),
            ),
            if(_auth==Auth.signin)
            Container(
              color: GlobalVariables.backgroundColor,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                 key:_signUpFornKey ,
                 child: Column(
                  children: [
                    CostomTextField(
                      hintText: 'Email',
                      controller: _emailcontroller),
                       const SizedBox(height: 10,),
                      CostomTextField(
                      hintText: 'Password',
                      controller: _passwordcontroller),
                      const SizedBox(height: 10,),
                      CostomButton(text: 'Sign In', onTap: (){
                        
                      })
                  ],
                 ),),
              ),
            ),
          ],
        ),
      )),
    );
  }
}