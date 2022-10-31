import 'package:cb1/screens/new_account.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Sample App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        body: const MyStatefulWidget(),
        backgroundColor: Colors.black,
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(5),
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
              padding: EdgeInsets.all(30),
            ),
            Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.all(7),
                child: const Text(
                  'Welcome!',
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
                  'Sign in to continue',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.pink,
                      fontWeight: FontWeight.w600),
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
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      color: Colors.pink,
                    )),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
              child: TextField(
                style: TextStyle(color: Colors.pinkAccent),
                obscureText: true,
                controller: passwordController,
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
                  child: const Text('Login'),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                  },
                )),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text(
                'Forgot Password?',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.pink,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
            ),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  ' - Or sign in with -',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                )),
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
            Container(
              padding: EdgeInsets.all(10),
            ),
            Row(
              children: <Widget>[
                const Text(
                  'Don\'t have an account?',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.pink,
                  ),
                ),
                TextButton(
                  child: const Text(
                    'Create one now',
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
                      MaterialPageRoute(builder: (context) => SignInScreen()),
                    );
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }
}
