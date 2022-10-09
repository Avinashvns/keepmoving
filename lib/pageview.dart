import 'package:flutter/material.dart';
import 'package:keepmoving/register.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// Owner Page View Class

class PageStarter extends StatefulWidget {
  @override
  _PageStarterState createState() => _PageStarterState();
}

class _PageStarterState extends State<PageStarter> {
  final PageController controller = PageController();
  bool isLastPage = false;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 80.0),
        child: PageView(
          controller: controller,
          onPageChanged: (index) {
            setState(() {
              isLastPage = index == 2;
            });
          },
          children: [
            Container(
             child: Column(
               children: [
                 SizedBox(height: 100,),
                 CircleAvatar(
                   radius: 160,
                   backgroundImage: AssetImage("image/mobile.jpg"),
                 ),
                 SizedBox(height: 50,),
                 Text("Confirm Your Drive",style: TextStyle(fontSize: 20,color: Colors.indigo,fontWeight: FontWeight.w700),),
                 SizedBox(height: 20,),
                 Text("Huge drive network helps you find a comfortable and cheap ride",style: TextStyle(fontSize: 12),),
               ],
             ),
            ),
            Container(
              child: Column(
                children: [
                  SizedBox(height: 100,),
                  CircleAvatar(
                    radius: 160,
                    backgroundImage: AssetImage("image/ride.webp"),
                  ),
                  SizedBox(height: 50,),
                  Text("Request Ride",style: TextStyle(fontSize: 20,color: Colors.indigo,fontWeight: FontWeight.w700),),
                  SizedBox(height: 20,),
                  Text("Request a ride gets picked up by a nearby community driver",style: TextStyle(fontSize: 12),),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  SizedBox(height: 100,),
                  CircleAvatar(
                    radius: 160,
                    backgroundImage: AssetImage("image/track.jpg"),
                  ),
                  SizedBox(height: 50,),
                  Text("Track your ride",style: TextStyle(fontSize: 20,color: Colors.indigo,fontWeight: FontWeight.w700),),
                  SizedBox(height: 20,),
                  Text("Know your drive in advance and be able to view current location",style: TextStyle(fontSize: 12),),
                  Text("in real-time on the map",style: TextStyle(fontSize: 12),),
                ],
              ),
            ),
          ],
        ),
      ),

      bottomSheet: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 150,
        child: Column(
          children: [
            Center(
              child: SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: WormEffect(
                  spacing: 16,
                  dotColor: Colors.black26,
                  activeDotColor: Colors.purple,
                ),
                onDotClicked: (index) => controller.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 100),
                  curve: Curves.easeIn,
                ),
              ),
            ),
            SizedBox(height: 20,),
            TextButton(
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                primary: Colors.white,
                backgroundColor: Colors.teal.shade700,
                minimumSize: const Size.fromHeight(80),
              ),
              child: const Text(
                'Owner Get Started',
                style: TextStyle(fontSize: 24),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeApp()));
              },
            )
          ],
        ),
      ),



    );
  }
}
