import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import '../../../data/app_data.dart';
import '../../../routes/app_pages.dart';
import '../../signinscreen/views/signinscreen_view.dart';
import '../controllers/signupscreen_controller.dart';

class SignupscreenView extends GetView<SignupscreenController> {
   SignupscreenView({Key? key}) : super(key: key);

  SignupscreenController controller = Get.find<SignupscreenController>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        // title: const Text('SignupscreenView'),
        // centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_outlined,color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height*0.05,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: size.width*0.9,
                child: Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: size.width*0.9,
                child: Text(
                  'Create an account here',
                  style: TextStyle(fontSize: 15,color: Colors.grey),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: formField1("Username",Icons.person),
                elevation: 0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                  child: formField1("Mobile Number",Icons.mobile_screen_share_sharp),
                elevation: 0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: formField1("Email Address",Icons.email),
                elevation: 0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: formField1("Password",Icons.lock),
                elevation: 0,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    child: FloatingActionButton(
                      onPressed: (){
                        // controller.navigateToSignIn();
                        Get.toNamed(Routes.SIGNINSCREEN);
                      },
                      child: Icon(Icons.arrow_forward_outlined,color: Colors.white),
                      // foregroundColor: ,
                      backgroundColor:Colors.teal ,
                    ),
                  ),
                  SizedBox(
                    width: size.width*0.06,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: size.width*0.1,
                  ),
                  RichText(
                    // Controls visual overflow
                    overflow: TextOverflow.clip,

                    // Controls how the text should be aligned horizontally
                    textAlign: TextAlign.end,

                    // Control the text direction
                    textDirection: TextDirection.rtl,

                    // Whether the text should break at soft line breaks
                    softWrap: true,

                    // Maximum number of lines for the text to span
                    // maxLines: 1,

                    // The number of font pixels for each logical pixel
                    textScaleFactor: 1,
                    text: TextSpan(
                      text: 'Already a member?',
                      style: TextStyle(color: Colors.black),
                      children: const <TextSpan>[
                        TextSpan(
                            text: 'Sign in', style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }

  Widget formField1( String hint,IconData icons) {
    return TextFormField(
      style: TextStyle(fontSize: AppData.hinttextSize),
      autofocus: false,
      // enabled: enable,
      controller:controller.userNameController,
      textCapitalization: TextCapitalization.sentences,
      keyboardType: TextInputType.text,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp("[a-zA-Z. ]")),
      ],
      decoration: InputDecoration(
        //prefixIcon: Icon(Icons.insert_drive_file_outlined),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        // alignLabelWithHint: true,
        hintText: hint,
        // border: InputBorder.none,

        prefixIcon: Icon(icons),
        // border:InputBorder.none ,
        enabledBorder: UnderlineInputBorder( //<-- SEE HERE
          borderSide: BorderSide(
              width: 1, color: Colors.black12),
        ),

        hintStyle: TextStyle(
          color: AppData.hinttextcolor, // <-- Change this
          fontSize: AppData.hinttextSize,
          // fontWeight: FontWeight.w400,
          // fontStyle: FontStyle.normal,
        ),
        // labelText: hint,
        labelStyle: TextStyle(
          color: AppData.lebletextcolor, // <-- Change this
          fontSize: AppData.lebletextSize,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),

        contentPadding: EdgeInsets.only(left: 0, top: 15, right: 4,bottom: 0),
      ),
    );
  }

   Widget formFieldMobile( String hint,IconData icons) {
     return TextFormField(
       style: TextStyle(fontSize: AppData.hinttextSize),
       autofocus: false,
       // enabled: enable,
       controller:controller.userNameController,
       textCapitalization: TextCapitalization.sentences,
       keyboardType: TextInputType.text,
       inputFormatters: [
         FilteringTextInputFormatter.allow(RegExp("[a-zA-Z. ]")),
       ],
       decoration: InputDecoration(
         //prefixIcon: Icon(Icons.insert_drive_file_outlined),
         floatingLabelBehavior: FloatingLabelBehavior.never,
         // alignLabelWithHint: true,
         hintText: hint,
         // border: InputBorder.none,

         prefixIcon: Icon(icons),
         // border:InputBorder.none ,
         enabledBorder: UnderlineInputBorder( //<-- SEE HERE
           borderSide: BorderSide(
               width: 1, color: Colors.black12),
         ),

         hintStyle: TextStyle(
           color: AppData.hinttextcolor, // <-- Change this
           fontSize: AppData.hinttextSize,
           // fontWeight: FontWeight.w400,
           // fontStyle: FontStyle.normal,
         ),
         // labelText: hint,
         labelStyle: TextStyle(
           color: AppData.lebletextcolor, // <-- Change this
           fontSize: AppData.lebletextSize,
           fontWeight: FontWeight.w400,
           fontStyle: FontStyle.normal,
         ),

         contentPadding: EdgeInsets.only(left: 0, top: 15, right: 4,bottom: 0),
       ),
     );
   }


}
