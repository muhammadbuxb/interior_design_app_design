import 'package:flutter/material.dart';
import 'package:interior_designer/pages/home_page.dart';
import 'package:interior_designer/pages/signup_screen.dart';
import 'package:interior_designer/resources/utiles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  bool _secureText = true;

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
          Image.asset(AppUtiles.AppLogo,
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
                    'Login',
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
                  controller: email,
                  decoration: InputDecoration(
                      labelText: 'Email',
                      
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
                  obscureText: _secureText,
                  controller: password,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      suffixIcon: IconButton(
                        onPressed: showHide,
                        icon: _secureText
                            ? const Icon(Icons.visibility_off)
                            : const Icon(Icons.visibility),
                      ),
                      hintText: 'Password',
                      hintStyle:
                          const TextStyle(fontSize: 16, color: Colors.black)),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forget Password",
                    style:
                        TextStyle(fontSize: 17, color: AppUtiles.secondaryColor),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const HomePage()));
                    },
                    child: Text(
                      "Login",
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
                      "Don't have Account ?",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const SignupScreen()));
                      },
                      child:Text(
                        'Signup',
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
