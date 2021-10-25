import 'package:flutter/material.dart';
import 'package:boas_vindas/pages/pagina_boas_vindas.dart';

class PaginaInicial extends StatelessWidget {

  TextEditingController _textoNome = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
       body: 
       Center(child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              "Digite seu nome!", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
            ),

            SizedBox(height: 30),

            TextField(
              controller: _textoNome,
              decoration: new InputDecoration(
                hintText: "Nome",
                contentPadding: EdgeInsets.all(10.0)
              )
            ),

            SizedBox(height: 30),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white30
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => PaginaBoasVindas(_textoNome.text)
                ));
              },
              child: Text(
                "Enviar",
                style: TextStyle(color: Colors.black)
              )
            ),

          ],
        )
      )
    );
  }
}