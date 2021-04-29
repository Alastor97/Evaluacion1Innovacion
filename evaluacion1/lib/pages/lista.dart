import 'package:flutter/material.dart';

class Lista extends StatelessWidget {
  const Lista({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  Image(image: AssetImage('assets/bicicleta.png')),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text(
                        'Pivot',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),
                      ),
                      
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 10,),

                    ],
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
        color: Colors.grey.shade200,
      ),
      child: child,
    );
  }
}
