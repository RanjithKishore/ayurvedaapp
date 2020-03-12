import 'package:ayurved/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  final Function toggleView;
  SignIn({this.toggleView});
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth=AuthService();
  final _formKey =GlobalKey<FormState>();


  String email="";
  String  password="";
  String error='';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.amber[250] ,
      appBar: AppBar(backgroundColor:Colors.amber[500],
        elevation:2.0,
        title: Text('Tridosha Analyzer'),
        actions: <Widget>[
          FlatButton.icon(
            icon:Icon(Icons.person),
            label:Text('Register'),
            onPressed: (){
              widget.toggleView();
            },
          )

        ],
                    ),
                    body:
                    Container(
                    padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 50.0) ,
                    child: Form(
                    key:_formKey,
                    child:Column(
                    children: [Container(child:Text('Email ID',style:TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),textAlign: TextAlign.left, )),
                    SizedBox(height:2.0),
                    TextFormField(
                    validator: (val)=>val.isEmpty?'Enter an Email':null,
                    onChanged: (val){
                    setState(() =>email=val);
                    }),
                      Container(height:30),
                      Container(child:Text('Password',style:TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),) ,),
                    SizedBox(height:2.0),
                    TextFormField(
                    validator: (val)=>val.isEmpty?'Enter a valid password':null,
                    obscureText: true,
                    onChanged: (val){
                    setState(() => password=val);

                    },

                    ),
                    SizedBox(height:20.0),
                    RaisedButton(
                    color:Colors.amber[200],
                    child:Text('Sign In'),
                    onPressed:()async {
                    if(_formKey.currentState.validate())
                    {
                      dynamic result=await _auth.signInWithEmailAndPassword(email,password);
                      if (result==null)
                      {
                        setState(()=>error='Invalid email or password provided');

                      }
                    }



          },
                ),
                SizedBox(height:12.0),
                Text(error)
              ],
            )
          ),
        ),
    );
  }
}
