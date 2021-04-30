import 'package:flutter/material.dart';

class Lista extends StatelessWidget {
  const Lista({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text('Mi App?'),
      ),
      body: Center(
        child: ListView(
          children: [
            SizedBox(height: 15,),
            ProductContainer(
              child: Column(
                children: [
                  /*
                  Row(
                    children: [
                      Text(
                        'Pivot',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text(
                        'Mach 5.5 Carbon TRAIL'
                      )
                    ],
                  ),
                  */
                  SizedBox(height: 20,),
                  Image(image: AssetImage('assets/bicicleta.png')),
                  SizedBox(height: 10,),
                  /*
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 1),
                    color: Colors.grey.shade100
                  ),
                  */
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text(
                        'Pivot',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text(
                        'Mach 5.5 Carbon TRAIL'
                      )
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 1),
                    color: Colors.grey.shade100
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Image(image: AssetImage('assets/estrella.png'),width: 23,),
                      SizedBox(width: 2,),
                      Image(image: AssetImage('assets/estrella.png'),width: 23,),
                      SizedBox(width: 2,),
                      Image(image: AssetImage('assets/estrella.png'),width: 23,),
                      SizedBox(width: 2,),
                      Image(image: AssetImage('assets/estrella.png'),width: 23,),
                      SizedBox(width: 2,),
                      Image(image: AssetImage('assets/estrella.png'),width: 23,),
                      SizedBox(width: 10,),
                      Text('(8 Calificaciones)',),
                      SizedBox(width: 10,),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text(
                    ''
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            ProductContainer(
              child: Column(
                children: [
                  Image(image: AssetImage('assets/bicicleta.png')),
                ],
              ),
            ),
            SizedBox(height: 10,),
            ProductContainer(
              child: Column(
                children: [
                  Image(image: AssetImage('assets/bicicleta.png')),
                ],
              ),
            ),
            SizedBox(height: 10,),

          ],
        ),
      )
    );
  }
}

class ProductContainer extends StatelessWidget {
  final Widget child;
  const ProductContainer({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      margin: EdgeInsets.symmetric(horizontal: 15,),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: child,
    );
  }
}
