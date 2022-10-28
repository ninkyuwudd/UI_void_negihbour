import 'package:flutter/material.dart';

class Riwayat extends StatefulWidget {
  const Riwayat({super.key});

  @override
  State<Riwayat> createState() => _RiwayatState();
}

class _RiwayatState extends State<Riwayat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            //title
            Container(
              height: 100,
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 5,
                  offset: Offset(1, 1),
                )
              ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 50, left: 20),
                    child: const Text(
                      "Riwayat",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),


            //kontainer detail riwayat
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              decoration:  BoxDecoration(
                  color:const  Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius: -10,
                      blurRadius: 15,
                      offset: Offset(1, 5),
                    )
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const[
                      Text(
                        "Kritik Saran",
                        style: TextStyle(
                            color: Color.fromARGB(255, 101, 137, 255),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 90,),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                        "28 September 2022",
                        textAlign: TextAlign.end,
                      ),),
                    ],
                  ),
                  const Text("Satpam")
                ],
              ),
            ),
          ],
        ),
      ),

      //bottom navigation bar
      
    );
  }
}
