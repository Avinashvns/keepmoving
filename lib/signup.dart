
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {

  final TextEditingController email_controller1 =
  TextEditingController(text: "");
  final TextEditingController name_controller2 =
  TextEditingController(text: "");
  final TextEditingController phone_controller3 =
  TextEditingController(text: "");
  // final TextEditingController droptype_controller4 =
  // TextEditingController(text: "");
  final TextEditingController gst_controller5 =
  TextEditingController(text: "");

  String flexs="";
  String droptype="Personal";

  void controlling() {
    String email = email_controller1.text;
    String name = name_controller2.text;
    String phone = phone_controller3.text;
    //String droptype= droptype_controller4.text;
    String gst= gst_controller5.text;
  }



  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Sign Up",style: TextStyle(fontSize: 30,color: Colors.indigo),),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              TextField(
                controller: widget.email_controller1,
                keyboardType: TextInputType.number,
                maxLines: null,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter email address',
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

              TextField(
                controller: widget.name_controller2,
                keyboardType: TextInputType.number,
                maxLines: null,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter name',
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

              TextField(
                controller: widget.phone_controller3,
                keyboardType: TextInputType.number,
                maxLines: null,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter phone number',
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

              // dropdown value
              InputDecorator(
                    decoration: InputDecoration(
                        hintText: 'Please select expense',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: widget.droptype,
                        icon: const Icon(Icons.arrow_drop_down_outlined),
                        elevation: 5,
                        style: const TextStyle(color: Colors.indigo),
                        onChanged: (String? newValue){
                          setState((){
                            widget.droptype=newValue!;
                          });
                        },
                        items: <String>['Personal','Business','House Shifting']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
              SizedBox(height: 15,),

              TextField(
                controller: widget.gst_controller5,
                keyboardType: TextInputType.number,
                maxLines: null,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter GST(Optinal)',
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
              ),

              SizedBox(height: 150,),

              ElevatedButton(
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
                  showDialog(
                    context: context,
                    builder: (BuildContext context)=>AlertDialog(
                      title: const Text("Error"),
                      content: Text("Something went wrong"),
                      actions: <Widget>[
                        TextButton(
                          child: const Text("Done"),
                          onPressed: ()=>Navigator.pop(context,"Done"),
                        ),
                      ],
                    ),
                  );
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}
