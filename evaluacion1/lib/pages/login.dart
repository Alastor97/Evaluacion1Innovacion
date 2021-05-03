import 'package:flutter/material.dart';

class Login extends StatelessWidget {

  final usuario = TextEditingController();
  final password = TextEditingController();

  String usuario1 = '';
  String password1 = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Mi App?',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 75,
                fontStyle: FontStyle.italic
              ),
            ),
            SizedBox(height: 110,),
            _userTextField(),
            SizedBox(height: 20,),
            _passwordTextField(),
            SizedBox(height: 20,),
            _buttonLogin(),

          ],
        ),
      ),
    );
  }

  Widget _userTextField() {
    return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot){
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: TextFieldContainer(
            child: TextField(
              controller: usuario,
              decoration: InputDecoration(
                icon: Icon (
                  Icons.person,
                ),
                hintText: 'Nombre de usuario',
                
                border: InputBorder.none,
              ),
              onTap: (){
                
              }
            ),
            
          ),
        );
      },
    );
  }
  
  Widget _passwordTextField() {
    return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot){
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: TextFieldContainer(
            child: TextField(
              controller: password,
              obscureText: true,
              decoration: InputDecoration(
              icon: Icon(Icons.lock),
              hintText: 'Contraseña',
              //suffixIcon: Icon(Icons.visibility),
              border: InputBorder.none
             ),
            ),
          ),
        );
      },
    );
  }

  Widget _buttonLogin() {
    return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot){
        return ElevatedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 100.0, vertical: 15.0),
            child: Text(
              'Acceder',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.blue
                
              ),
            ),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                return Colors.white;
              }
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
            ),
          ),
          onPressed: (){
            // ignore: unrelated_type_equality_checks
            usuario1 = usuario.text;
            password1 = password.text;

            if(usuario1=='' || password1==''){
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text('Error'),
                  content: Text('Debe ingresar un usuario y una contraseña'),
                  actions: <Widget>[
                    ElevatedButton(
                      child: Text('Ok'),
                      onPressed: (){
                        Navigator.of(context).pop();
                      },
                    )
                  ],
                )
              );
            } else if (usuario1!='duoc2021' || password1!='duoc2021') {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text('Error'),
                  content: Text('El usuario o la contraseña no son correctos'),
                  actions: <Widget>[
                    ElevatedButton(
                      child: Text('Ok'),
                      onPressed: (){
                        Navigator.of(context).pop();
                      },
                    )
                  ],
                )
              );
            } else {
              Navigator.pushNamed(context, '/lista');
            }
            
          },
        );
      }
    );
    
  }
}


class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30)
      ),
      child: child,
    );
  }
}
