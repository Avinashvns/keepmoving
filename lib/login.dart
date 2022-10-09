
import 'package:flutter/material.dart';
import 'package:keepmoving/register.dart';

class Login extends StatefulWidget {
  final TextEditingController pno_controller1 =
  TextEditingController(text: "");

  String flexs = "";

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 100,),
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage("image/keepmoving.png"),
            ),
            SizedBox(height: 140,),

            Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text("Welcome",style: TextStyle(fontSize: 20,color: Colors.indigo,fontWeight: FontWeight.w500),),
                  SizedBox(height: 5,),
                  Text("Login with your phone number"),
                  SizedBox(height: 10,),
                  TextField(
                    controller: widget.pno_controller1,
                    keyboardType: TextInputType.number,
                    maxLines: null,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter your mobile no',
                      hintStyle: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    onChanged: (text) {
                      widget.flexs = text;
                      setState(() {});
                    },
                  ),
                  SizedBox(height: 15,),


                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.indigo,
                      minimumSize: const Size.fromHeight(35),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5),),
                          side: BorderSide(color: Colors.indigo)
                      ),
                    ),
                    child: Text("SEND  OTP",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),),
                    onPressed: (){
                      showDialog(
                        context: context,
                        builder: (BuildContext context)=>AlertDialog(
                          title: const Text("Error"),
                          content: Text("total"),
                          actions: <Widget>[
                            TextButton(
                              child: const Text("Done"),
                              onPressed: ()=>Navigator.pop(context,"Done"),
                            ),
                          ],
                        ),
                      );

                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeApp()));
                    },
                  ),

                  SizedBox(height: 10,),
                  RichText(
                    text: TextSpan(
                      //text: 'Hello ',
                      style: DefaultTextStyle.of(context).style,
                      children: const <TextSpan>[
                        TextSpan(text: 'By clicking you are agree to our ', style: TextStyle(fontSize: 10,color: Colors.grey)),
                        TextSpan(text: 'Terms & Conditions', style: TextStyle(fontSize: 10,color: Colors.indigo)),
                        TextSpan(text: ' and ',style: TextStyle(fontSize: 10,color: Colors.grey)),
                        TextSpan(text: 'Privacy Policy', style: TextStyle(fontSize: 10,color: Colors.indigo)),
                      ],
                    ),
                  )

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
