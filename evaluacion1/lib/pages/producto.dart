import 'dart:ui';

import 'package:flutter/material.dart';

class Producto extends StatelessWidget {
  const Producto({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text('Detalle'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'PIVOT'
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        'MACH 5.5 CARBON TRAIL',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Image(image: AssetImage('assets/estrella.png'), width: 23,),
                      SizedBox(width: 2,),
                      Image(image: AssetImage('assets/estrella.png'), width: 23,),
                      SizedBox(width: 2,),
                      Image(image: AssetImage('assets/estrella.png'), width: 23,),
                      SizedBox(width: 2,),
                      Image(image: AssetImage('assets/estrella.png'), width: 23,),
                      SizedBox(width: 2,),
                      Image(image: AssetImage('assets/estrella.png'), width: 23,),
                      SizedBox(width: 2,),
                      Text('(8 calificaciones)')
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text('Bicicleta aro 27\'\''),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Image(image: AssetImage('assets/bicicleta1.png')),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Text(
                        'Precio normal',
                        style: TextStyle(
                          fontSize: 15
                        ),
                      ),
                      SizedBox(width: 130,),
                      Text(
                        '\$349.990',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.lineThrough,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        'Precio oferta',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(width: 137,),
                      Text(
                        '\$299.990',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.red
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        'Descuento',
                        style: TextStyle(
                          fontSize: 15
                        ),
                      ),
                      SizedBox(width: 157,),
                      Container(
                        width: 60,
                        height: 30,
                        padding: EdgeInsets.symmetric(vertical: 7),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          '-15%',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            ElevatedButton(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 30),
                child: Text(
                  '<< Volver',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    return Colors.blue;
                  }
                )
              ),
              onPressed: (){
                Navigator.pop(context);
              },
            )
          ],
        ),
        
      ),
    );
  }
}