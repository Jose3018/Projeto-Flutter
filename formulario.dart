import 'package:flutter/material.dart';

import 'package:flutter/index.html';

class PaginaBoasVindas extends StatelessWidget {

  String _textoEmail;

  PaginaBoasVindas(this._nome);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
     body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              "Ol� $_textoEmail, seja bem-vindo!", style: TextStyle(fontSize: 18)
            ),

            SizedBox(height: 10),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white30
              ),
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text(
                "Voltar",
                style: TextStyle(color: Colors.black)
              ),
            )

          ],
        ),
      ),
    );
  }
}