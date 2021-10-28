import 'package:flutter/material.dart';
import 'package:boas_vindas/pages/formulario.dart';

class PaginaInicial extends StatelessWidget {

  TextEditingController _textoNome = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
       body: 
       decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("\Projeto\projeto\lib\img\papel-de-parede-futebol.jpg"),
            fit: BoxFit.cover,
          ),
        ),
       Center(child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              "Agendamento Society Login!", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
            ),

            SizedBox(height: 30),

            TextField(
              controller: _textoEmail,
              decoration: new InputDecoration(
                hintText: "Email",
                contentPadding: EdgeInsets.all(10.0)
              )

              TextField(
              controller: _textoSenha,
              decoration: new InputDecoration(
                hintText: "Senha",
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
                "Login",
                style: TextStyle(color: Colors.black)
              )
            ),

          ],
        )
      )
    );
  }
}