import 'package:flutter/material.dart';
import 'package:loja/screens/login/login_screen.dart';

class CustonDrawerHeader extends StatelessWidget {
  const CustonDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).pop();
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => LoginScreen())
        );
      },
      child: Container(
        color: Colors.purple,
        height: 95,
        padding: const  EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Icon(Icons.person, color: Colors.white, size: 35,),
            const SizedBox(width: 20,),
            Expanded(
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Acesse sua Conta",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                      ),

                    ),
                    Text(
                      "Clique aqui",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400
                      ),
                    )
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}
