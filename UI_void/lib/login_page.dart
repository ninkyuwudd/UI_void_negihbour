import 'package:flutter/material.dart';
import 'folder_navbarpage/riwayat.dart';
import 'folder_navbarpage/home_page.dart';
import 'main_navigationbar_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool _obscuretext = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(right: 30, left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: const [
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "Masuk",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Image(image: AssetImage('images/logo_login.png')),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),

              const Text(
                "Username",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),

              TextFormField(
                decoration: const InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    hintText: 'Masukkan username ...'),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Password",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            
              TextFormField(
                obscureText: _obscuretext,
                decoration: InputDecoration(
                    
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _obscuretext = !_obscuretext;
                          });
                        },
                        icon: const Icon(Icons.remove_red_eye)),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    hintText: 'Masukkan password ...',
                    ),
              ),

              Center(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          
                          style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(),
                              primary: const Color.fromARGB(255, 101, 137, 255),
                              ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>const  ButonNavbar()));
                          },
                          child: const Text("Masuk")),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Riwayat()));
                      },
                      child: const Text(
                        "Lupa Password",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    const Image(image: AssetImage('images/footer_text.png')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
