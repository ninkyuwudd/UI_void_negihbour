import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(32),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/decoration/decor_profile.png"), 
                  fit: BoxFit.cover),
            ),
            child: Column(
              
              children: [
                Text("Profile",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                SizedBox(height: 20,),
                Image(image: AssetImage("images/icon_homepage/photoMainprofile.png"))
              ],
            ),
          ),
          SizedBox(height: 25,),
          Text("This Name",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              Icon(Icons.pin_drop),
              Text("Blok A6, Cluster Clover"),
            ],
          )
          

        ],
      ),
    );
  }
}
