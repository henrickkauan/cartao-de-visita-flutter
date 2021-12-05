import 'package:flutter/material.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey[800],
        //  gradient (begin: Alignment.topRight, end: Alignment.bottomRight, colors: [Colors.yellow.shade700, Colors.blue.shade900]),
        body: SafeArea(
          child: Column(
            //cross = contrario da posição
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
                child: CircleAvatar(
                  backgroundImage: AssetImage('img/fotoperfil.png'),
                  radius: 100,
                ),
              ),
              Text(
                'Henrick Kauan',
                style: TextStyle(
                    letterSpacing: 5,
                    fontFamily: 'RobotoMono',
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Front end Developer',
                    style: TextStyle(
                        //backgroundColor: Colors.pink[900],
                        fontFamily: 'RobotoMono',
                        letterSpacing: 5,
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
                SizedBox(
                  width: 400, 
                  height: 20,
                  child: Divider(color: Colors.black26),
                  ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone_android,
                      size: 50.0,
                      color: Colors.blueGrey,
                    ),
                    title: Text(
                      '(11) 99999-9999',
                      style: TextStyle(
                        fontFamily: 'Kanit',
                        color: Colors.blue,
                        fontSize: 30,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      size: 50.0,
                      color: Colors.blueGrey,
                    ),
                    title: Text(
                      'henrick.oliveira@etec.sp.gov.br',
                      style: TextStyle(
                        color: Colors.blue,
                        fontFamily: 'Kanit',
                        fontSize: 30,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                  width: 400, 
                  height: 30,
                
                  ),
              Container(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  Container(
                    child: Image(image: AssetImage('img/fb.png'), width: 80,),
                  ),
                  Container(
                    child: Image(image: AssetImage('img/insta.png'), width: 80,),
                  ),
                  Container(
                    child: Image(image: AssetImage('img/tw.png'), width: 80,),
                  )
                ],),
                
              )
            ],       
          ),
        ),
      ),
    );
  }
}
