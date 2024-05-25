import 'package:flutter/material.dart';
import 'package:reto_presentacion/constans/constans.dart';

class RandomPage extends StatefulWidget {
  @override
  State<RandomPage> createState() => _RandomPageState();
}

class _RandomPageState extends State<RandomPage> {
  int n1 = 0;
  int n2 = 0;
  int n3 = 0;
  int n4 = 0;
  int n5 = 0;
  int n6 = 0;
  void resetVariables() {
    setState(() {
      n1 = 0;
      n2 = 0;
      n3 = 0;
      n4 = 0;
      n5 = 0;
      n6 = 0;
    });
  }

  void sumar() {
    n6 = n1 + n2 + n3 + n4 + n5;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Reto Random'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('$n6'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      'Contador 1',
                      style: texto,
                    ),
                    Text(
                      '$n1',
                      style: texto,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        n1++;
                        sumar();
                        setState(() {});
                      },
                      child: Text("add"),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Contador2',
                      style: texto,
                    ),
                    Text(
                      '$n2',
                      style: texto,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        n2++;
                        sumar();
                        setState(() {});
                      },
                      child: Text("add"),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      'Contador 3',
                      style: texto,
                    ),
                    Text(
                      '$n3',
                      style: texto,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        n3++;
                        sumar();
                        setState(() {});
                      },
                      child: Text("add"),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Contador 4',
                      style: texto,
                    ),
                    Text(
                      '$n4',
                      style: texto,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        n4++;
                        sumar();
                        setState(() {});
                      },
                      child: Text("add"),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      'Contador 5',
                      style: texto,
                    ),
                    Text(
                      '$n5',
                      style: texto,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        n5++;
                        sumar();
                        setState(() {});
                      },
                      child: Text("add"),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          resetVariables();
        },
        child: Text("Reset"),
      ),
    );
  }
}
