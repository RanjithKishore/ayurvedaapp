import 'package:flutter/material.dart';
import 'package:ayurved/services/auth.dart';
class Register extends StatefulWidget {
  final Function toggleView;
  Register({this.toggleView});
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final AuthService _auth=AuthService();
  final _formKey =GlobalKey<FormState>();


  String email="";
  String  password="";
  String error="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.amber[250] ,
      appBar: AppBar(backgroundColor:Colors.amber[500],
        elevation:2.0,
        title: Text('Sign up to Tridosha Analyzer'),
        actions: <Widget>[
          FlatButton.icon(
            icon:Icon(Icons.person),
            label:Text('Sign In '),
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
              children: [
                Container(child:Text('Enter your email ID',style:TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),textAlign: TextAlign.left, )),
                SizedBox(height:2.0),
                TextFormField(
                  validator: (val)=>val.isEmpty?'Enter an Email':null,
                    onChanged: (val){
                      setState(() =>email=val);
                    }),
                Container(height:30.0),
                Container(child:Text('Enter a password',style:TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),textAlign: TextAlign.left, )),

                SizedBox(height:2.0),
                TextFormField(
                  validator: (val)=>val.length<6?'Enter a Valid Password ':null,
                  obscureText: true,
                  onChanged: (val){
                    setState(() => password=val);

                  },

                ),

                SizedBox(height:20.0),
                RaisedButton(
                  color:Colors.amber[200],
                  child:Text('Register '),
                  onPressed:()async {
                    if(_formKey.currentState.validate())
                      {
                        dynamic result=await _auth.registerWithEmailAndPassword(email,password);
                      if (result==null)
                        {
                          setState(()=>error='Invalid email or password');

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
