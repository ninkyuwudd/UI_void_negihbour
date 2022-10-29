import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  Widget build(BuildContext context) {
    return SafeArea(child: 
      Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading:
                Container(
                  margin: const EdgeInsets.only(left: 15,top: 10),
                  child: Image.asset("images/void_logo_homepage.png"),
              ), 
            
          actions: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: 10,),
                const Text(
                  "Hi, Asta!",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: const [
                    Text(
                      "Blok A6, Cluster Clover",
                      style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.pin_drop,
                      color: Colors.black,
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(width: 20,)
          ],
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          margin:
              const EdgeInsets.only(top: 30, left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 75, 85, 159),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      const Image(image: AssetImage("images/Home.png")),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Open House",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: 200,
                            child: Text(
                              "Anda sedang berada di rumah dan siap menerima tamu",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Flexible(
                  child: Container(
                    margin: const EdgeInsets.only(
                        top: 30, right: 20, left: 20, bottom: 30),
                    child: GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 4,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: const Image(
                              image: AssetImage(
                                  "images/icon_homepage/layanan_icon.png")),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Image(
                              image: AssetImage(
                                  "images/icon_homepage/bayar_icon.png")),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Image(
                              image: AssetImage(
                                  "images/icon_homepage/satpam_icon.png")),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Image(
                              image: AssetImage(
                                  "images/icon_homepage/darurat_icon.png")),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Image(
                              image: AssetImage(
                                  "images/icon_homepage/masukan_icon.png")),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Image(
                              image: AssetImage(
                                  "images/icon_homepage/acara_icon.png")),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Image(
                              image: AssetImage(
                                  "images/icon_homepage/usaha_icon.png")),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                      top: 12, bottom: 12, right: 15, left: 15),
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromARGB(38, 0, 0, 0),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(1, 5)),
                    ],
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(colors: [
                      Color.fromARGB(135, 255, 197, 179),
                      Colors.white
                    ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                  ),
                  child: Row(
                    children: [
                      const Image(
                          image: AssetImage(
                              "images/icon_homepage/wallet_icon.png")),
                      const SizedBox(
                        width: 17,
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Total Kas RT'),
                          Text(
                            'Rp 23.000.000,00',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      // const SizedBox(width: 100,),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {},
                        child: const Image(
                            image: AssetImage(
                                "images/icon_homepage/right_row_icon.png")),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),

                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Text("Acara Terdekat",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {},
                            child: const Text("lihat semua",style: TextStyle(color: Color.fromARGB(255, 79, 78, 189)),),
                          )
                        ],
                      ),

                      const SizedBox(height: 15,),

                      Container(
                        padding: const EdgeInsets.all(13),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 1.0, color: const Color.fromARGB(80, 74, 74, 74)),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(38, 0, 0, 0),
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: Offset(1, 5)),
      
                          ],
                          
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10,),
                            const Text("Resepsi Pernikahan",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 79, 78, 189)),),
                            const SizedBox(height: 13,),
                            Row(
                              children: const [
                                  Icon(Icons.pin,color:Color.fromARGB(176, 197, 63, 30) ,),
                                  Text("Blok A6, Cluster Clover")
                              ],
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              children: const [
                                  Icon(Icons.date_range,color:Color.fromARGB(176, 197, 63, 30) ,),
                                  Text("21 Oktober 2022")
                              ],
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              children: const [
                                  Icon(Icons.watch,color:Color.fromARGB(176, 197, 63, 30) ,),
                                  Text("09.00 WIB")
                              ],
                            ),

                          ],
                        ),
                      ),
                      
                    ],
                  ),
                ),

                const SizedBox(height: 20,),

                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Text("Informasi Terbaru",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {},
                            child: const Text("lihat semua",style: TextStyle(color: Color.fromARGB(255, 79, 78, 189))),
                          )
                        ],
                      ),

                      const SizedBox(height: 15,),

                      Container(
                        padding: const EdgeInsets.all(13),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 1.0, color: const Color.fromARGB(80, 74, 74, 74)),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(38, 0, 0, 0),
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: Offset(1, 5)),
      
                          ],
                          
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10,),
                            const Text("Ada Tetangga baru!",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 79, 78, 189)),),
                            const SizedBox(height: 13,),
                            Row(
                              children: const [
                                  Icon(Icons.pin),
                                  Text("Blok A6, Cluster Clover")
                              ],
                            ),

                          ],
                        ),
                      ),
                      
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),

        // bottomNavigationBar: BottomNavigationBar(
        //   currentIndex: _selectedIndex,

        //   type: BottomNavigationBarType.fixed,
          
        //   items: const [
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.home),
        //       label: "Beranda",
              
        //     ),
        //     BottomNavigationBarItem(
              
        //       icon: Icon(Icons.document_scanner),
        //       label: "Riwayat",
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.people),
        //       label: "Tetangga",
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.map),
        //       label: "Jelajahi",
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.person),
        //       label: "Akun",
        //     ),
        //   ],
        // ),
      )
    );
  }
}
