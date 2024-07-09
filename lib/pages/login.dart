import 'package:flutter/material.dart';
import 'package:codepur/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool ChangeBtn = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        ChangeBtn = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        ChangeBtn = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.network(
                "https://via.placeholder.com/150", // Placeholder image URL
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              Text(
                'Welcome $name',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 40.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter Username',
                        labelText: 'Username',
                      ),
                      validator: (value){
                        if(value?.isEmpty ?? true){     //samjh nhi aaya ye thoda
                          return "Username cannot be empty";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        setState(() {
                          name = value;
                        });
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Enter Password',
                        labelText: 'Password',
                      ),
                    validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Password cannot be empty";
                        } else if (value.length < 6) {
                          return "Password length should be at least 6";
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Material(
                color:ChangeBtn?Colors.green: Colors.blue,
                borderRadius: ChangeBtn?BorderRadius.circular(30):BorderRadius.circular(8),
                child: InkWell(
                  onTap: () => moveToHome(context),
                
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: ChangeBtn ? 50 : 150,
                    height: 50,
                   
                    alignment: Alignment.center,
                    child: ChangeBtn
                        ? Icon(Icons.done)
                        : Text(
                            "Login",
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
