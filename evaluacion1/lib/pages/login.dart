import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

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
            /*shadowColor: MaterialStateColor.resolveWith(
              (Set<MaterialState> states) {
                return Colors.blue;
              }
            )*/
          ),
          onPressed: (){
            Navigator.pushNamed(context, '/lista');
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
