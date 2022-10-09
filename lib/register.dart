
import 'package:flutter/material.dart';
import 'package:keepmoving/login.dart';
import 'package:keepmoving/signup.dart';


class HomeApp extends StatefulWidget {
  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //SizedBox(height: 20,),
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage("image/keepmoving.png"),
            ),
            //SizedBox(height: 20,),
            Text("Welcome",style: TextStyle(fontSize: 20,color: Colors.indigo,fontWeight: FontWeight.w700),),
            //SizedBox(height: 20,),
            Center(
              child: Text("Already have an account click login, otherwise click signup",style: TextStyle(fontSize: 12),),
            ),

            SizedBox(height: 200,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  minimumSize: const Size.fromHeight(35),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5),),
                      side: BorderSide(color: Colors.indigo)
                    ),
                ),
                child: Text("LOGIN",style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.w700),),
                onPressed: (){
                  print("Clicked Login");
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                },
              ),
            ),
            //SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.indigo,
                  minimumSize: const Size.fromHeight(35),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5),),
                      side: BorderSide(color: Colors.indigo)
                  ),
                ),
                child: Text("SIGN UP",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),),
                onPressed: (){
                  print("Clicked Signup");
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}
