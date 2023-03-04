import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/app_data.dart';
import '../../../routes/app_pages.dart';
import '../controllers/signinscreen_controller.dart';

class SigninscreenView extends GetView<SigninscreenController> {
   SigninscreenView({Key? key}) : super(key: key);

   SigninscreenController controller = Get.find<SigninscreenController>();
  @override
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
                'Sign in',
                style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: size.width*0.9,
              child: Text(
                'Welcome back',
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
          GetBuilder(
            builder: (SigninscreenController controller) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: TextFormField(
                    controller:controller. cnfpwd.value,
                    obscureText:controller. isPassShow.value,
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
                      hintText: "Password",
                      // border: InputBorder.none,

                      prefixIcon: Icon(Icons.lock),
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
                        suffixIcon: IconButton(
                          icon: Icon(
                            controller.isPassShow.value ? Icons.visibility : Icons.visibility_off,
                            color:controller.isPassShow.value ? Colors.deepPurple :Colors.grey,
                          ),
                          onPressed: () {

                            // controller.isPassShow.value = !controller.isPassShow.value;
                            controller.passwordMask();

                          },

                        ),
                      contentPadding: EdgeInsets.only(left: 0, top: 15, right: 4,bottom: 0),
                    ),

                  ),
                ),
              );
            },
            id: 'passWord',
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: (){
                  Get.toNamed(Routes.FORGOTPASSWORD);
                },
                child: Container(
                  child: Text("Forgot Password?",style: TextStyle(color: Colors.black,
                      fontWeight: FontWeight.bold,decoration: TextDecoration.underline,),

                  ),
                ),
              )
            ],
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
                      Get.toNamed(Routes.VERIFICATION);
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
                    text: 'New member?',
                    style: TextStyle(color: Colors.black),
                    children: const <TextSpan>[
                      TextSpan(
                          text: 'Sign up', style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ],
            ),
          )




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
