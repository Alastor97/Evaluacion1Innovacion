import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text('Acerca de'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          decoration: BoxDecoration(
            color: Colors.white
          ),
          child: Column(
            
            children: [
              Image(image: AssetImage('assets/camiroaga.png')),
              SizedBox(height: 100,),
              Text(
                'App dedicada a Felipe Camiroaga',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 19,
                  fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}