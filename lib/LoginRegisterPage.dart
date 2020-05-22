import 'package:flutter/material.dart';

class LoginRegisterPage extends StatefulWidget{
    State<StatefulWidget> createState(){
      return _LoginRegisterState();
    }
}

enum FormType{
  login,
  register
}


class _LoginRegisterState extends State<LoginRegisterPage>{

  final formKey = new GlobalKey<FormState>();
  FormType _formType = FormType.login;
  String _email = "";
  String _password = "";

  //methods
  bool validateAndSaveUser(){
    final form = formKey.currentState;
    if(form.validate()){
      form.save();
      return true;
    }else{
      return false;
    }
  }

  void moveToRegister(){
    formKey.currentState.reset();
    setState(() {
      _formType = FormType.register;
    });
  }



  void moveToLogin(){
    formKey.currentState.reset();
    setState(() {
      _formType = FormType.login;
    });
  }

  //Design
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Forex Signals"),
        backgroundColor: Colors.lightBlue,
      ),
      //resizeToAvoidBottomPadding: false,
      body: new Container(
        margin: EdgeInsets.all(15.0),
        child: new Form(
          key: formKey,
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: createInput() + createButtons(),
            ),
        ),
      ),
    );
  }

  List<Widget> createInput(){
    return[
      SizedBox(height: 10.0,),
      logo(),
      SizedBox(height: 20.0,),

      new TextFormField(
        decoration: new InputDecoration(labelText: 'Email'),
        validator: (value){
          return value.isEmpty? 'Email is required':null;
        },
        onSaved: (value){
          return _email = value;
        },
      ),
      SizedBox(height: 10.0,),
      new TextFormField(
        decoration: new InputDecoration(labelText: 'Password'),
      ),
      SizedBox(height: 20.0,),
    ];
  }

  Widget logo(){
    return new Hero(
      tag: 'hero',
        child: new CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 100.0,
          child: Image.asset('images/rich.png'),
        )
    );
  }


  List<Widget> createButtons(){
   if(_formType == FormType.login){
     return[
             new RaisedButton(
               child: new Text('Login', style: new TextStyle(
                   fontSize: 20.0)),
               textColor: Colors.white,
               color: Colors.lightBlue,

               onPressed: validateAndSaveUser,
             ),

             new FlatButton(
               child: new Text('Don\'t Have an Account? Create account', style: new TextStyle(
                   fontSize: 14.0)),
               textColor: Colors.red,

               onPressed: moveToRegister,
             ),
           ];
   }else{
     return[
             new RaisedButton(
               child: new Text('Create Account', style: new TextStyle(
                   fontSize: 20.0)),
               textColor: Colors.white,
               color: Colors.lightBlue,

               onPressed: validateAndSaveUser,
             ),

             new FlatButton(
               child: new Text('Already have an account? Login', style: new TextStyle(
                   fontSize: 14.0)),
               textColor: Colors.red,

               onPressed: moveToLogin,
             ),
     ];
   }
  }
}