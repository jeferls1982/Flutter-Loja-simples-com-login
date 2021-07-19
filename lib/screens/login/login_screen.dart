import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Entrar"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Card(
            margin: const EdgeInsets.symmetric(horizontal: 32),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12)
            ),
            elevation: 8,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Acessar com E-mail:",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[900]
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 3,bottom: 4, top: 8),
                    child: Text(
                      'Email',
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 16,
                        fontWeight: FontWeight.w700

                      ),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      isDense: true,
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 16,),
                  Padding(
                    padding: const EdgeInsets.only(left: 3,bottom: 4,),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Senha',
                          style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 16,
                            fontWeight: FontWeight.w700
                          ),
                        ),
                        GestureDetector(
                          child: Text(
                            'Esqueceu a senha?',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.purple
                            ),
                          ),
                          onTap: (){},
                        ),

                      ],
                    )
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      isDense: true,
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 16,),
                  Container(
                    height: 40,
                    margin: EdgeInsets.only(top: 20, bottom: 12),
                    child: RaisedButton(
                      color: Colors.orange,
                      child: Text("ENTRAR"),
                      textColor: Colors.white,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      onPressed: () {  },

                    ),

                  ),
                  Divider(color: Colors.black,),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: <Widget>[
                        const Text(
                          'Não tem conta?',
                          style: TextStyle(fontSize: 16),
                        ),
                        GestureDetector(
                          onTap: (){
                            /*Navigator.of(context).push(MaterialPageRoute(builder: (_)=>SignUpScreen()));*/
                          },
                          child: Text(
                            'Cadastre-se',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.purple,
                              fontSize: 16,
                            ),
                          ),

                        )
                      ],
                    ),
                  )

                ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}
