import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../data/app_data.dart';
import '../../../routes/app_pages.dart';
import '../controllers/verification_controller.dart';

class VerificationView extends GetView<VerificationController> {
   VerificationView({Key? key}) : super(key: key);

   VerificationController controller = Get.find<VerificationController>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Text(
                  'Verification',
                  style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Text(
                  'Enter the OTP code we sent you',
                  style: TextStyle(fontSize: 18,color: Colors.grey),
                ),
              ],
            ),
          ),
          Form(
            key: controller.formKey.value,
            child: Padding(
                padding:  EdgeInsets.symmetric(
                    vertical: size.height*0.06, horizontal:50),
                child: PinCodeTextField(
                  appContext: context,

                  pastedTextStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  length: 4,
                  obscureText: true,
                  obscuringCharacter: '*',
                  animationType: AnimationType.fade,
                  validator: (v) {
                  },
                  pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderWidth:  0.1,
                      borderRadius: BorderRadius.circular(10),
                      fieldHeight: 70,
                      fieldWidth: 55,
                      activeFillColor: controller.hasError.value ? Colors.white : Colors.white,
                      // activeFillColor: Colors.black,
                      inactiveColor:Colors.grey,
                      inactiveFillColor: Color(0xffd9dedc),
                      selectedFillColor: Colors.white38,
                      // #d4d6d5
                      // selectedColor:AppData.matruColor,
                      // activeColor:AppData.matruColor
                  ),
                  cursorColor: Colors.black,
                  animationDuration: Duration(milliseconds: 300),
                  textStyle: TextStyle(fontSize: 20, height: 1.6),
                  backgroundColor: Colors.white,
                  enableActiveFill: true,
                  // errorAnimationController: errorController,
                  // controller: controller._passController,
                  keyboardType: TextInputType.number,
                  boxShadows: [
                    BoxShadow(
                      offset: Offset(0, 1),
                      color: Colors.white,
                      blurRadius: 10,
                    )
                  ],
                  onCompleted: (v) {
                    // _validate();
                    // Navigator.pushNamed(context, "/dashboardNewLekh");
                    // print("Completed");
                  },
                  // onTap: () {
                  //   print("Pressed");
                  // },
                  onChanged: (value) {
                  },
                  beforeTextPaste: (text) {
                    print("Allowing to paste $text");
                    //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                    //but you can show anything you want here, like your pop up saying wrong paste format or etc
                    return true;
                  },
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Resend in 00:30',
                  style: TextStyle(fontSize: 20,color: Colors.grey),
                ),
              ],
            ),
          ),
          SizedBox(
            height: size.height*0.06,
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
                      Get.toNamed(Routes.USERDASHBOARD);
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
}
