import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_screen_controller.dart';

class ProfileScreenView extends GetView<ProfileScreenController> {
  ProfileScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 6,
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Container(
                    child: FloatingActionButton(
                      onPressed: () {
                        // controller.navigateToSignIn();
                        // Get.toNamed(Routes.SIGNINSCREEN);
                      },
                      child:
                          Icon(Icons.person, color: Colors.white),
                      // foregroundColor: ,
          // #F5F5F5 #EBEBEB #E1E1E1 #D7D7D7 #CDCDCD #C3C3C3 #B9B9B9 #AFAFAF
                      backgroundColor: Color(0xffD7D7D7),
                      elevation:0 ,
                    ),
                  ),
                ),
                SizedBox(
                  width: 6,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // width: MediaQuery.of(context).size.width*0.7,
                      child: Text("Full name",style: TextStyle(color: Colors.grey,fontSize: 12)),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*0.63,
                      child: Text("Jatin",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
                Container(
                  child: Icon(Icons.mode_edit_outlined,color: Colors.black),
                )
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 6,
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Container(
                    child: FloatingActionButton(
                      onPressed: () {
                        // controller.navigateToSignIn();
                        // Get.toNamed(Routes.SIGNINSCREEN);
                      },
                      child:
                      Icon(Icons.phone, color: Colors.white),
                      // foregroundColor: ,
                      // #F5F5F5 #EBEBEB #E1E1E1 #D7D7D7 #CDCDCD #C3C3C3 #B9B9B9 #AFAFAF
                      backgroundColor: Color(0xffD7D7D7),
                      elevation:0 ,
                    ),
                  ),
                ),
                SizedBox(
                  width: 6,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text("Phone number",style: TextStyle(color: Colors.grey,fontSize: 12)),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*0.63,
                      child: Text("+60134589525",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
                Container(
                  child: Icon(Icons.mode_edit_outlined,color: Colors.black),
                )
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 6,
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Container(
                    child: FloatingActionButton(
                      onPressed: () {
                        // controller.navigateToSignIn();
                        // Get.toNamed(Routes.SIGNINSCREEN);
                      },
                      child:
                      Icon(Icons.mail_outline, color: Colors.white),
                      // foregroundColor: ,
                      // #F5F5F5 #EBEBEB #E1E1E1 #D7D7D7 #CDCDCD #C3C3C3 #B9B9B9 #AFAFAF
                      backgroundColor: Color(0xffD7D7D7),
                      elevation:0 ,
                    ),
                  ),
                ),
                SizedBox(
                  width: 6,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text("Email",style: TextStyle(color: Colors.grey,fontSize: 12)),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*0.63,
                      child: Text("demo@gmail.com",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
                Container(
                  child: Icon(Icons.mode_edit_outlined,color: Colors.black),
                )
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 6,
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Container(
                    child: FloatingActionButton(
                      onPressed: () {
                        // controller.navigateToSignIn();
                        // Get.toNamed(Routes.SIGNINSCREEN);
                      },
                      child:
                      Icon(Icons.location_on_rounded, color: Colors.white),
                      // foregroundColor: ,
                      // #F5F5F5 #EBEBEB #E1E1E1 #D7D7D7 #CDCDCD #C3C3C3 #B9B9B9 #AFAFAF
                      backgroundColor: Color(0xffD7D7D7),
                      elevation:0 ,
                    ),
                  ),
                ),
                SizedBox(
                  width: 6,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text("Address",style: TextStyle(color: Colors.grey,fontSize: 12)),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*0.63,
                      child: Text("3 Addersion Court",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*0.63,
                      child: Text("Chino Hills,HO56824,United State",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold)),
                    )
                  ],
                ),

                Container(
                  child: Icon(Icons.mode_edit_outlined,color: Colors.black),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
