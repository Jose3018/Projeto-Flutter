import 'package:flutter/material.dart';

class Pilulas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Qual tela você vai escolher?", style: TextStyle(fontSize: 24), textAlign: TextAlign.center,
          ),
          SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                ),
                onPressed: (){
                  Navigator.pushNamed(context, 'tela1');
                },
                child: Text(
                  "tela1.1", style: TextStyle(color: Colors.white)
                ),
              ),
              SizedBox(width: 25),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
                onPressed: (){
                  Navigator.pushNamed(context, 'tela2');
                },
                child: Text(
                  "tela2.1", style: TextStyle(color: Colors.white)
                ),
              )
            ]
          )
        ],
      ),
    );
  }
}