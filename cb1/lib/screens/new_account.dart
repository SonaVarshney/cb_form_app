import 'package:cb1/main.dart';
import 'package:flutter/material.dart';
import 'package:cb1/screens/details2.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
          child: ListView(children: <Widget>[
            Container(
              padding: EdgeInsets.all(7),
            ),
            Row(
              children: [
                Image.asset(
                  'assets/cb.png',
                  width: 70,
                  height: 70,
                ),
                Image.asset(
                  'assets/cb1.png',
                  width: 80,
                  height: 40,
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(5),
            ),
            // Container(
            //   alignment: Alignment.topLeft,
            //   child: IconButton(
            //     icon: const Icon(
            //       Icons.arrow_back,
            //       color: Colors.pink,
            //     ),
            //     onPressed: () {
            //       Navigator.pop(context);
            //     },
            //   ),
            // ),
            Container(
              padding: EdgeInsets.all(15),
            ),
            Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Hi!',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      color: Colors.pink,
                      fontWeight: FontWeight.w700,
                      fontSize: 33),
                )),
            Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: const Text(
                  'Create a new account',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.pink,
                  ),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                style: TextStyle(color: Colors.pinkAccent),
                controller: nameController,
                decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.white),
                    ),
                    labelText: 'Username',
                    labelStyle: TextStyle(
                      color: Colors.pink,
                    )),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
              child: TextField(
                style: TextStyle(color: Colors.pinkAccent),
                obscureText: false,
                controller: passwordController,
                decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.white),
                    ),
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      color: Colors.pink,
                    )),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                style: TextStyle(color: Colors.pinkAccent),
                obscureText: true,
                // controller: passwordController,
                decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.white),
                    ),
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      color: Colors.pink,
                    )),
              ),
            ),
            Container(
              height: 60,
              padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.pink, // Background color
                ),
                child: const Text('Sign Up'),
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => DetailScreen()),
                  // );
                },
              ),
            ),

            Container(
              padding: EdgeInsets.all(5),
            ),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  ' - Or sign up with -',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                )),
            Container(
              padding: EdgeInsets.all(10),
            ),
            Center(
              // Alignment: ,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Image.asset('assets/g.png'),
                    iconSize: 30,
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Image.asset('assets/t.png'),
                    iconSize: 42,
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Image.asset('assets/app.png'),
                    iconSize: 35,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            // Row(
            //   children: <Widget>[
            //     const Text('Don\'t have an account?'),
            //     TextButton(
            //       child: const Text(
            //         'Create one now',
            //         // style: TextStyle(fontSize: 20),
            //       ),
            //       onPressed: () {
            //         //signup screen
            //       },
            //     )
            //   ],
            //   mainAxisAlignment: MainAxisAlignment.center,
            // ),
            // ],

            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Already have an account?',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.pink,
                    ),
                  ),
                  TextButton(
                    child: const Text(
                      'Log in',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.pink,
                      ),
                      // style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      //signup screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyApp()),
                      );
                    },
                  )
                ],
              ),
            ),
          ]),
        ));
  }
}
