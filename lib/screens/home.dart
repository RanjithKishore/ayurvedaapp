import 'package:ayurved/services/auth.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {



  int _vata=0,_pitha=0,_kapha=0;
  String _result=' calculating' ;
  bool _pressed=false;




  final AuthService _auth=AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Home'),
        actions: <Widget>[
          FlatButton.icon(
            icon:Icon(Icons.person),
            label:Text('Logout'),
            onPressed:()async{
              await _auth.signOut();

            }
          )
        ],
      ),
      body:
      ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Card(
            elevation:50,
            child:ListTile(title:const Center(child: Text('PHYSICAL CONSTITUTION',style:TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)),),
          ),

          Card(
            elevation: 50,

            child:
          ListTile(

            title:Column(
              children: <Widget>[
                const Center(child: Text('Weight',style:TextStyle(fontWeight: FontWeight.bold)),
                ),Container(
                  width: double.infinity,
                  child:Container(
                    width: double.infinity,
                    child:

              FlatButton(

                child:Text('Low, difficulties in gaining weight'),
                color: Colors.amber[100],

                onPressed: (){
                  setState(()=>_vata++);

                },
              ),),),Container(
            width: double.infinity,
            child:
          FlatButton(
                      child:Text('No difficulties in gaining or loosing weight'),
            color: Colors.amber[200],
          onPressed: (){
            setState(()=>_pitha++);
              },)),Container(
            width: double.infinity,
            child:
        FlatButton(
          child:Text('Heavy, difficulties in loosing weight'),
          color: Colors.amber[300],
          highlightColor: Colors.amber[500],
          onPressed: (){
            setState(()=>_kapha++);


          },)),
              ],
            )
          ),),
          Card(
            elevation: 50,

            child:
            ListTile(

                title:Column(
                  children: <Widget>[
                    const Center(child: Text('Appetite',style:TextStyle(fontWeight: FontWeight.bold))),
              Container(
                width: double.infinity,
                child:

                    FlatButton(
                      child:Text('Unpredictable, irregular, variable'),
                      color: Colors.amber[100],
                      onPressed: (){
                        setState(()=>_vata++);
                      },
                    )),
              Container(
                width: double.infinity,
                child:
                    FlatButton(
                      child:Text('Strong, cannot skip meals'),
                      color: Colors.amber[200],
                      onPressed: (){
                        setState(()=>_pitha++);
                      },)),
              Container(
                width: double.infinity,
                child:
                    FlatButton(
                      child:Text('Constant, but can skip meals easily '),
                      color: Colors.amber[300],
                      highlightColor: Colors.amber[500],
                      onPressed: (){
                        setState(()=>_kapha++);


                      },)),
                  ],
                )
            ),),
          Card(
            elevation: 50,

            child:
            ListTile(

                title:Column(
                  children: <Widget>[
                    const Center(child: Text('Amount of Food',style:TextStyle(fontWeight: FontWeight.bold))),
              Container(
                width: double.infinity,
                child:

                    FlatButton(
                      child:Text('Very variable'),
                      color: Colors.amber[100],
                      onPressed: (){
                        setState(()=>_vata++);
                      },
                    )),
              Container(
                width: double.infinity,
                child:
                    FlatButton(
                      child:Text('Usually a lot'),
                      color: Colors.amber[200],
                      onPressed: (){
                        setState(()=>_pitha++);
                      },)),
              Container(
                width: double.infinity,
                child:
                    FlatButton(
                      child:Text('Can feel full with little'),
                      color: Colors.amber[300],
                      highlightColor: Colors.amber[500],
                      onPressed: (){
                        setState(()=>_kapha++);


                      },)),
                  ],
                )
            ),),
          Card(
            elevation: 50,

            child:
            ListTile(

                title:Column(
                  children: <Widget>[
                    const Center(child: Text('Skin Texture',style:TextStyle(fontWeight: FontWeight.bold))),
              Container(
                width: double.infinity,
                child:

                    FlatButton(
                      child:Text('Thin,dry and rough'),
                      color: Colors.amber[100],
                      onPressed: (){
                        setState(()=>_vata++);
                      },
                    )),
              Container(
                width: double.infinity,
                child:
                    FlatButton(
                      child:Text('Smooth,warm and oily'),
                      color: Colors.amber[200],
                      onPressed: (){
                        setState(()=>_pitha++);
                      },)),
              Container(
                width: double.infinity,
                child:
                    FlatButton(
                      child:Text('Thick and moist'),
                      color: Colors.amber[300],
                      highlightColor: Colors.amber[500],
                      onPressed: (){
                        setState(()=>_kapha++);


                      },)),
                  ],
                )
            ),),
          Card(
            elevation: 50,

            child:
            ListTile(

                title:Column(
                  children: <Widget>[
                    const Center(child: Text('Complexion',style:TextStyle(fontWeight: FontWeight.bold))),
              Container(
                width: double.infinity,
                child:

                    FlatButton(
                      child:Text('Dark,tans easily'),
                      color: Colors.amber[100],
                      onPressed: (){
                        setState(()=>_vata++);
                      },
                    )),
              Container(
                width: double.infinity,
                child:
                    FlatButton(
                      child:Text('Fair with frickles'),
                      color: Colors.amber[200],
                      onPressed: (){
                        setState(()=>_pitha++);
                      },)),
              Container(
                width: double.infinity,
                child:
                    FlatButton(
                      child:Text('Pale and hardly tans'),
                      color: Colors.amber[300],
                      highlightColor: Colors.amber[500],
                      onPressed: (){
                        setState(()=>_kapha++);


                      },)),
                  ],
                )
            ),),
          Card(
            elevation: 50,

            child:
            ListTile(

                title:Column(
                  children: <Widget>[
                    const Center(child: Text('Hair',style:TextStyle(fontWeight: FontWeight.bold))),
              Container(
                width: double.infinity,
                child:

                    FlatButton(
                      child:Text('Dry,brittle and curly'),
                      color: Colors.amber[100],
                      onPressed: (){
                        setState(()=>_vata++);
                      },
                    )),
              Container(
                width: double.infinity,
                child:
                    FlatButton(
                      child:Text('Soft,straight and fine'),
                      color: Colors.amber[200],
                      onPressed: (){
                        setState(()=>_pitha++);
                      },)),
              Container(
                width: double.infinity,
                child:
                    FlatButton(
                      child:Text('Thick and weavy'),
                      color: Colors.amber[300],
                      highlightColor: Colors.amber[500],
                      onPressed: (){
                        setState(()=>_kapha++);


                      },)),
                  ],
                )
            ),),
          Card(
            elevation: 50,

            child:
            ListTile(

                title:Column(
                  children: <Widget>[
                    const Center(child: Text('Frame',style:TextStyle(fontWeight: FontWeight.bold))),
              Container(
                width: double.infinity,
                child:

                    FlatButton(
                      child:Text('Thin, lanky, boney and taller or shorter than average'),
                      color: Colors.amber[100],
                      onPressed: (){
                        setState(()=>_vata++);
                      },
                    )),
              Container(
                width: double.infinity,
                child:
                    FlatButton(
                      child:Text('Build and size, weight centered in middle'),
                      color: Colors.amber[200],
                      onPressed: (){
                        setState(()=>_pitha++);
                      },)),
              Container(
                width: double.infinity,
                child:
                    FlatButton(
                      child:Text('Stocky, broad and either very tall or very short'),
                      color: Colors.amber[300],
                      highlightColor: Colors.amber[500],
                      onPressed: (){
                        setState(()=>_kapha++);


                      },),)
                  ],
                )
            ),),


          Card(
            elevation: 50,

            child:
            ListTile(

                title:Column(
                  children: <Widget>[
                    const Center(child: Text('Eyes',style:TextStyle(fontWeight: FontWeight.bold))),
              Container(
                width: double.infinity,
                child:

                    FlatButton(
                      child:Text('Small and dry'),
                      color: Colors.amber[100],
                      onPressed: (){
                        setState(()=>_vata++);
                        setState((){
                          _pressed=true;
                          if(_vata>_pitha && _vata>_kapha)
                            _result='vata';
                          else if(_pitha>_vata && _pitha >_kapha)
                            _result='pitha';
                          else
                            _result='kapha';
                        });
                      },
                    ),),
              Container(
                width: double.infinity,
                child:
                    FlatButton(
                      child:Text('Penetrating gaze'),
                      color: Colors.amber[200],
                      onPressed: (){
                        setState(()=>_pitha++);
                        setState((){
                          _pressed=true;
                          if(_vata>_pitha && _vata>_kapha)
                            _result='vata';
                          else if(_pitha>_vata && _pitha >_kapha)
                            _result='pitha';
                          else
                            _result='kapha';
                        });
                      },),),
              Container(
                width: double.infinity,
                child:
                    FlatButton(
                      child:Text('Large and moist'),
                      color: Colors.amber[300],
                      highlightColor: Colors.amber[500],
                      onPressed: (){
                        setState(()=>_kapha++);
                        setState((){
                          _pressed=true;
                          if(_vata>_pitha && _vata>_kapha)
                            _result='vata';
                          else if(_pitha>_vata && _pitha >_kapha)
                            _result='pitha';
                          else
                            _result='kapha';
                        });


                      },)),
                  ],
                )
            ),),

    Card(
    elevation: 50,

    child:
    ListTile(

    title:
        Center(child:_pressed? new Text('Result: $_result'):SizedBox(),)))








        ],
      ),


    );
  }
}
