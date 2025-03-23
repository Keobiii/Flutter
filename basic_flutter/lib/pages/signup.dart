import 'package:basic_flutter/widget/customize_textform.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  // Ways get value from textfield

  // Option 1
  // String _username = '';

  // void _updateUsername(String val) {
  //   setState(() {
  //     _username = val;
  //   });
  // }

  // Option 2
  var _username;
  var _email;
  var _password;
  var _cpassword;

  final _usernameController = TextEditingController();
  final __emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _cpasswordController = TextEditingController();

  @override
  void initState() {
    super.initState();

    _usernameController.addListener(_updateUserData);
    __emailController.addListener(_updateUserData);
    _passwordController.addListener(_updateUserData);
    _cpasswordController.addListener(_updateUserData);
  }

    void _updateUserData() {
    setState(() {
      _username = _usernameController.text;
      _email = __emailController.text;
      _password = _passwordController.text;
      _cpassword = _cpasswordController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: const Color(0xFF2148C0),
          ),
          Positioned(
            top: -20,
            right: 0,
            child: Image.asset(
              'assets/wave.png',
              width: 250,
              height: 250,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              'assets/ellipse_s.png',
              width: 190,
              height: 190,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              'assets/ellipse_l.png',
              width: 150,
              height: 150,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              'assets/ellipse_xl.png',
              width: 110,
              height: 110,
            ),
          ),

          Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sign Up',
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.white
                      )
                    ),
                  ),

                  SizedBox(height: 15.0,),

                  CustomTextField(
                    controller: _usernameController, // Pass the controller here
                    labelText: 'username'.toUpperCase(),
                    icon: Icons.person_outline_outlined,
                    keyboardType: TextInputType.text,
                  ),

                  SizedBox(height: 20.0,),

                  CustomTextField(
                    controller: __emailController, // Pass the controller here
                    labelText: 'Email'.toUpperCase(),
                    icon: Icons.email_outlined,
                    keyboardType: TextInputType.emailAddress,
                  ),

                  SizedBox(height: 20.0,),

                  CustomTextField(
                    controller: _passwordController, // Pass the controller here
                    labelText: 'password'.toUpperCase(),
                    icon: Icons.lock_outline_rounded,
                    keyboardType: TextInputType.visiblePassword,
                    isPassword: true,
                  ),

                  SizedBox(height: 20.0,),

                  CustomTextField(
                    controller: _cpasswordController, // Pass the controller here
                    labelText: 'confirm password'.toUpperCase(),
                    icon: Icons.lock_outline_rounded,
                    keyboardType: TextInputType.visiblePassword,
                    isPassword: true,
                  ),

                  // TextFormField(
                  //   // Option 1
                  //   // onChanged: (val) {
                  //   //   _updateUsername(val);
                  //   // },

                  //   // Option 2
                  //   controller: _usernameController,
                  //   decoration: const InputDecoration(
                  //     labelText: 'USERNAME',
                  //     prefixIcon: Icon(Icons.verified_user_outlined),
                  //     border: OutlineInputBorder(),
                  //   ),
                  // ),
                  
                  // Text(
                  //   // Option 1
                  //   // 'Data Value is :$_username'

                  //   // Option 2
                  //   'Data Value is: ${_usernameController.text}'
                  //   'Data Value is: ${_passwordController.text}'
                  // ),
                  const SizedBox(height: 50),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 45,
                        child: ElevatedButton(
                          onPressed: () {
                            context.go('/first');
                          },
                          style: ElevatedButton.styleFrom(
                          
                            backgroundColor: Colors.white,
                            elevation: 2.0,
                            shadowColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)
                            )
                          ),
                          child: Text(
                            'Register'.toUpperCase(),
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF2148C0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      GestureDetector(
                        onTap: (){
                          context.go('/login');
                        },
                        child: Text(
                          'Already have an account?',
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500
                            )
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
