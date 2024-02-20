import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
  Container(
    decoration: BoxDecoration(
      color: Colors.white, 
      borderRadius: BorderRadius.circular(8.0), 
    ),
    child: TextField(
      controller: usernameController,
      decoration: InputDecoration(
        labelText: 'Username',
        border: InputBorder.none, // 
      ),
    ),
  ),
  SizedBox(height: 16.0),
  Container(
    decoration: BoxDecoration(
      color: Colors.white, 
      borderRadius: BorderRadius.circular(8.0), 
    ),
    child: TextField(
      controller: passwordController,
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        border: InputBorder.none, 
      ),
    ),
  ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                String username = usernameController.text;
                String password = passwordController.text;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(username, password),
                  ),
                );
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final String username;
  final String password;

  SecondPage(this.username, this.password);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Username: $username',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Password: $password',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 16.0),
            Image.asset(
  'assets/Union bank of india ifsc code.jpg',
  fit: BoxFit.fill,
),

          ],
        ),
      ),
    );
  }
}
