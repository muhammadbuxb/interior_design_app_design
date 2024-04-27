import 'package:flutter/material.dart';
import 'package:interior_designer/pages/login_screen.dart';
import 'package:interior_designer/resources/utiles.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _secureText = true;
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  showHide() {
    setState(() {
      _secureText = !_secureText;
    });
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: ListView(
        children: [
          Image.asset('assets/logo.png',
              height: MediaQuery.of(context).size.width / 2),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(25)),
            child: Column(
              children: [
                Center(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: AppUtiles.primaryColor),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: 'Full Name',
                      hintStyle:
                          const TextStyle(fontSize: 16, color: Colors.black)),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: email,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: 'Email',
                      hintStyle:
                          const TextStyle(fontSize: 16, color: Colors.black)),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  // controller: email,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: 'Phone',
                      hintStyle:
                          const TextStyle(fontSize: 16, color: Colors.black)),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  // controller: email,
                  keyboardType: TextInputType.streetAddress ,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: 'Address',
                      hintStyle:
                          const TextStyle(fontSize: 16, color: Colors.black)),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  obscureText: _secureText,
                  controller: password,
                  decoration: InputDecoration(
                    
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      suffixIcon: IconButton(
                        onPressed: showHide(),
                        icon: _secureText
                            ? const Icon(Icons.visibility_off)
                            : const Icon(Icons.visibility),
                      ),
                      hintText: 'Password',
                      hintStyle:
                          const TextStyle(fontSize: 16, color: Colors.black)),
                ),
               
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Signup",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppUtiles.primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const Text(
                      "Already have Account ?",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                      },
                      child:Text(
                        'Login',
                        style: TextStyle(color: AppUtiles.primaryColor, fontSize: 16),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
              ],
            ),
          )
        ],
      ),
    );
  
  }
}