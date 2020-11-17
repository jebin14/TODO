import '../../screen/Login/login.dart';
import 'package:flutter/material.dart';

import '../../storage/app_storage.dart';

class RegisterScreen extends StatefulWidget {
  static const String routeName = 'register-screen';

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Register'),
      // ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: Theme.of(context).accentColor,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10, top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      Icons.arrow_back,
                      color: Theme.of(context).primaryColor,
                      size: 30,
                    ),
                    GestureDetector(
                      child: Text(
                        'Log in',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
                      },
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: 200,
                  child: Text(
                    'Create your account',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(top: 10,left: 15,right: 15),
                margin: EdgeInsets.all(7),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    labelText: 'Your Name',
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: BorderSide.none),
                  ),
                  controller: userNameController,
                ),
              ),
              Container(
               padding: EdgeInsets.only(left: 15,right: 15),
                margin: EdgeInsets.all(7),
                //color: Colors.white,
                child: TextFormField(
                  //style: TextStyle(background:Paint() ),
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  obscureText: true,
                  controller: passwordController,
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 15,right: 15),
                margin: EdgeInsets.all(7),
                //color: Colors.white,
                child: TextFormField(
                  //style: TextStyle(background:Paint() ),
                  keyboardType: TextInputType.multiline,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      labelText: ' Confirm Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: BorderSide.none,
                      ),
                      suffixIcon: IconButton(
                          icon: showPassword
                              ? Icon(Icons.remove_red_eye)
                              : Icon(Icons.visibility_off),
                          color: Theme.of(context).primaryColor,
                          onPressed: () {
                            setState(() {
                              showPassword = !showPassword;
                            });
                          })),
                  obscureText: showPassword ? false : true,
                  controller: passwordController,
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(5),
                child: ButtonTheme(
                  height: 55,
                  minWidth: 400,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  child: RaisedButton(
                    onPressed: _signUp,
                    child: Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ],
            //     child: Center(
            // child: GestureDetector(
            //   child: Text('Login Screen'),
            //   onTap: () => _move(context),
            // ),
          ),
        ),
      ),
    );
  }

  _signUp() {
    Navigator.of(context).pushNamed(
      'home-screen',
      arguments: {'key': 'home'},
    );
    // AppStorage storage=new AppStorage();
    //storage.getData('userLogin');
  }
}
