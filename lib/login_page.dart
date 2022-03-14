import 'package:flutter/material.dart';
import 'package:pertemuan_empat/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = "";
  String password = "";
  bool isLoginSuccess = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
          backgroundColor: Colors.blueGrey,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
            child: Column(children: [
              _createImage(),
              _usernameField(),
              _passwordField(),
              _loginButton(context),
            ]),
          ),
        ),
      ),
    );
  }

  Widget _createImage(){
    return Container(
      child: Image.network("data:image/jpeg;base64,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"),
    );
  }

  Widget _usernameField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        enabled: true,
        onChanged: (value) {
          username = value;
        },
        decoration: InputDecoration(
          hintText: 'Username',
          contentPadding: const EdgeInsets.all(8.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(color: Colors.blueGrey),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide:
                BorderSide(color: (isLoginSuccess) ? Colors.blueGrey : Colors.black),
          ),
        ),
      ),
    );
  }

  Widget _passwordField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        enabled: true,
        obscureText: true,
        onChanged: (value) {
          password = value;
        },
        decoration: InputDecoration(
          hintText: 'Password',
          contentPadding: const EdgeInsets.all(8.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(color: Colors.blueGrey),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide:
                BorderSide(color: (isLoginSuccess) ? Colors.blueGrey : Colors.black),
          ),
        ),
      ),
    );
  }

  Widget _loginButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: (isLoginSuccess) ? Colors.blue : Colors.blueGrey, // background
          onPrimary: Colors.white, // foreground
        ),
        onPressed: () {
          String text = "";
          if (username == "warmindo" && password == "123") {
            setState(() {
              text = "Login Success";
              isLoginSuccess = true;
            });
            _loginProcess(context);
          } else {
            setState(() {
              text = "Login Failed";
              isLoginSuccess = false;
            });
          }
          print("isLoginSuccess : $isLoginSuccess");
          SnackBar snackBar = SnackBar(
            content: Text(text),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Text('Login'),
      ),
    );
  }

  void _loginProcess(BuildContext context){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
      return HomePage();
    }));
  }
}
