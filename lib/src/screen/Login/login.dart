import 'package:flutter/material.dart';

import '../../storage/app_storage.dart';
import '../Register/register.dart';

class LoginScreen extends StatefulWidget {
 static const String routeName = 'login-screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Login'),
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
                        'Sign up',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      onTap: (){
                        Navigator.of(context).pushNamed(RegisterScreen.routeName);
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
                    'Log in',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: double.infinity,
                  height: 100,
                  //color: Colors.white,
                  //padding: EdgeInsets.all(5),
                  child: CircleAvatar(
                    //radius: 60,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.face,
                      size: 100,
                      color: Theme.of(context).primaryColor,
                    ),
                  )),
              Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.all(5),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    labelText: 'User name',
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
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.all(5),
                //color: Colors.white,
                child: TextFormField(
                  //style: TextStyle(background:Paint() ),
                  keyboardType: TextInputType.multiline,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      labelText: 'password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: BorderSide.none,
                      ),
                      suffixIcon: IconButton(
                          icon: showPassword
                              ? Icon(Icons.remove_red_eye)
                              : Icon(Icons.visibility_off),
                          color:Theme.of(context).primaryColor,
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
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.all(5),
                child: ButtonTheme(
                  height: 55,
                  minWidth: 400,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  child: RaisedButton(
                    onPressed: _login,
                    child: Text(
                      'Log in',
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

  void _login() {
    AppStorage.setData('userLogin', {
      'userName': userNameController.text.trim(),
      'password': passwordController.text.trim()
    });

    AppStorage.getData('userLogin');
    // Navigator.of(context).pushNamed('register-screen');
  }
}
