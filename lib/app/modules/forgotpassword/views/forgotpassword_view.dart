import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/app_data.dart';
import '../../../routes/app_pages.dart';
import '../controllers/forgotpassword_controller.dart';

class ForgotpasswordView extends GetView<ForgotpasswordController> {
   ForgotpasswordView({Key? key}) : super(key: key);

   ForgotpasswordController controller = Get.find<ForgotpasswordController>();

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        // title: const Text('SignupscreenView'),
        // centerTitle: true,
        leading: IconButton(
          onPressed: () {
            // Navigator.pop(context);
            Get.back();
            // Get.off(Page());
          },
          icon: Icon(Icons.arrow_back_outlined,color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: size.height*0.05,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: size.width*0.9,
              child: Text(
                'Forgot Password?',
                style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: size.width*0.9,
              child: Text(
                'Enter your email address',
                style: TextStyle(fontSize: 15,color: Colors.grey),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: formField1("Email Address",Icons.email_outlined),
              elevation: 0,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.14,
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
                      // Get.toNamed(Routes.VERIFICATION);
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
        ],
      ),
    );
  }

  Widget formField1( String hint,IconData icons) {
    return TextFormField(
      style: TextStyle(fontSize: AppData.hinttextSize),
      autofocus: false,
      // enabled: enable,
      // controller:controller.userNameController,
      keyboardType: TextInputType.text,
      // inputFormatters: [
      //   FilteringTextInputFormatter.allow(RegExp("[a-zA-Z. ]")),
      // ],
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
