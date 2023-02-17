import 'package:chatapp_firebase/pages/auth/login_page.dart';
import 'package:chatapp_firebase/widgets/widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);
  @override
  State<RegisterPage> createState() => _HomeScrrenState();
}

class _HomeScrrenState extends State<RegisterPage> {
  final formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  String fullName = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Firechat',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Register now to Explore!',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                Image.asset('assets/images/l.png'),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  decoration: textInputDecoration.copyWith(
                    labelText: 'Username',
                    prefixIcon: Icon(
                      Icons.person,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  validator: (value) {
                    if (value!.isNotEmpty) {
                      return null;
                    } else {
                      return "Name cannot be empty";
                    }
                  },
                  onChanged: (value) {
                    setState(() {
                      fullName = value;
                    });
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: textInputDecoration.copyWith(
                    labelText: 'Email',
                    prefixIcon: Icon(
                      Icons.email,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      email = value;
                    });
                  },
                  //check the validation
                  validator: ((value) {
                    return RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value!)
                        ? null
                        : "Please enter a valid email";
                  }),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: textInputDecoration.copyWith(
                    labelText: 'Password',
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  validator: (value) {
                    if (value!.length < 6) {
                      return "Password must be at least 6 character";
                    } else {
                      return null;
                    }
                  },
                  onChanged: (value) {
                    setState(() {
                      password = value;
                    });
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).primaryColor,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      register();
                    },
                    child: Text(
                      'Register',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Wrap(
                  children: [
                    Text(
                      "Already have an account? ",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      onTap: () {
                        nextScrrenReplace(context, LoginPage());
                      },
                      child: Text(
                        "Login Now",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  register() {
    formKey.currentState!.validate();
  }
}
