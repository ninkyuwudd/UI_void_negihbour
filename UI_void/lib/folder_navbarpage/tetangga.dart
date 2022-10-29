import 'package:flutter/material.dart';

class TetanggaPage extends StatefulWidget {
  const TetanggaPage({super.key});

  @override
  State<TetanggaPage> createState() => _TetanggaPageState();
}

class _TetanggaPageState extends State<TetanggaPage> {
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
                      "Tetangga",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              margin: const EdgeInsets.all(20),
              child: TextField(
                // controller: ,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {});
                      },
                      icon: const Icon(Icons.search)),
                  hintText: "Cari tahu tetanggamu!",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    // borderSide: const BorderSide(color)
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                ),
              ),
            ),

            //kontainer detail riwayat
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
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
                    children: [
                      const Image(
                          image: AssetImage(
                              "images/icon_homepage/photoprofile.png")),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Fadli Ramadhan",
                            style: TextStyle(
                                color: Color.fromARGB(255, 101, 137, 255),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Blok A7, Cluster Clover",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          Text("081234567891",style: TextStyle(
                              fontSize: 12,
                            ),),
                        ],
                      ),
                      const Spacer(),
                      const Image(
                          image:
                              AssetImage("images/icon_homepage/WhatsApp.png"))
                    ],
                  ),
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
