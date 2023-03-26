import 'package:coffee_berry/app/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/app_data.dart';
import '../../../widgets/CustomTabView.dart';
import '../controllers/userdashboard_controller.dart';

class UserdashboardView extends GetView<UserdashboardController> {
   UserdashboardView({Key? key}) : super(key: key);
  UserdashboardController controller = Get.find<UserdashboardController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                    onTap: (){
                      Get.toNamed(Routes.CANVASTUTORIAL1);
                    },
                    child: Text("Hi Jatin",style: TextStyle(color: Colors.black,fontSize: 15))),
                InkWell(
                    onTap: (){
                      // Get.toNamed(Routes.CANVASCHART);
                      Get.toNamed(Routes.MAPVIEWSCREEN);
                    },
                    child: Text("Good Morning",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold))),
              ],
            ),
            InkWell(
              onTap: (){
                Get.toNamed(Routes.WEBVIEW);
              },
              child: Container(
                child:Material(
                  elevation: 2.0,
                  // color: Colors.deepPurple,
                  shape: CircleBorder(),
                  child: CircleAvatar(
                    radius: 20.0,
                    backgroundImage: AssetImage('assets/images/logo.png') ,
                  ),
                ) ,
              ),
            )
          ],
        ),
        // leading: Container(),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: formFieldCodeSearch('Search'),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: CustomTabView(itemCount: controller.header.length,
                initPosition: 0,
                tabBuilder: (BuildContext context, int index) {
                return Tab(
                  text: controller.header[index],
                );
                },
                pageBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: (){
                              Get.toNamed(Routes.PRODUCT_DETAILS_PAGE);
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 12.0,right: 12.0,bottom: 2,top: 2),
                              child: Row(
                                children: [
                              Container(
                              decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.white),
                              image: DecorationImage(
                                  image: AssetImage("assets/images/cofee.jpg"),
                                  fit: BoxFit.cover
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            height: 100,
                            width: 90,
                            // child: Image.asset('assets/images/cofee.jpg'),
                          ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(child: Text("Robusta cherry AAA",
                                        style: TextStyle(color: Colors.grey,fontSize: 15,),)),
                                      Container(child: Text("\$199.99",
                                          style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold))),
                                      SizedBox(
                                        height: MediaQuery.of(context).size.height*0.03,
                                      ),
                                      Container(
                                        child: Text("x2"),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                );
                },
                onPositionChange: (index){

                }
                ,
                onScroll: (position) => print("On Scrolled Called>>>>${position.toString()}"),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar:  Container(
        height: 50,
        child: BottomNavigationBar(
          currentIndex: 0,
          elevation:9,
          // selectedItemColor:Colors.yellow  ,
          showUnselectedLabels: true,

          // fixedColor: Colors.deepPurple,
          // selectedItemColor: Colors.deepPurple,
          // unselectedItemColor: Colors.black,
          backgroundColor: Colors.white,
          iconSize: 30,
          onTap: (index) {
            switch (index) {
              case 0:
                print('Navigate to profile');
                // Navigator.pushNamed(context, "/profileMepage");
                break;
              case 1:
                print('Navigate to sync');
                Get.toNamed(Routes.MYCART);

                // ServerCommunicate.updateFromServer(false, widget.model);

                // Navigator.pushNamed(context, "/profileMepage");
                break;
              case 2:
                print('Navigate to profile');
                Get.toNamed(Routes.PROFILE_SCREEN);
                // Navigator.pushNamed(context, "/referralProgram");
                break;
            }
          },
          selectedFontSize: 9,
          unselectedFontSize: 9,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
                color: Colors.deepOrangeAccent,
              ),
              label: ""
              // backgroundColor: AppData.orangeColor
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.delivery_dining),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '',
            ),
          ],
        ),
      ),
    );
  }

   Widget formFieldCodeSearch(
       String hint,
       ) {
     return Padding(
       //padding: const EdgeInsets.all(8.0),
       padding:
       const EdgeInsets.only(top: 0.0, left: 14.0, right: 13.0, bottom: 0.0),
       child: Container(
         decoration: BoxDecoration(
             color: AppData.white,
             borderRadius: BorderRadius.circular(5),
             border: Border.all(color: Colors.grey, width: 1)),
         child: Padding(
           padding: const EdgeInsets.symmetric(horizontal: 13.0),
           child: Row(
             children: <Widget>[
               new Expanded(
                 child: CupertinoTextField(
                   //enabled: widget.isConfirmPage ? false : true,
                   // controller: textEditingController[index],
                   placeholder: hint,

                   padding: EdgeInsets.symmetric(horizontal: 6, vertical: 14),
                   style: TextStyle(
                       color: Colors.grey, fontSize: AppData.hinttextSize),
                   // focusNode: currentfn,
                   // cursorColor: AppData.deepPurple,
                   textInputAction: TextInputAction.next,
                   //maxLength: 10,
                   keyboardType: TextInputType.text,
                   prefix:Icon(Icons.search) ,
                   /* inputFormatters: [
                    FilteringTextInputFormatter.allow(
                        RegExp("[0-9 ]")),
                  ],*/

                   decoration: BoxDecoration(
                     //suffixIcon: Icon(Icons.phone),
                     // border: InputBorder.none,
                     // counterText: "",
                     // hintText: hint,
                     // hintStyle: TextStyle(
                     //     color: Colors.grey, fontSize: AppData.hinttextSize),
                   ),

                   onChanged: (value) {
                     // filterSalesLedgerUsingKeyWord(value);
                   },
                 ),
               )
             ],
           ),
         ),
       ),
     );
   }

}
