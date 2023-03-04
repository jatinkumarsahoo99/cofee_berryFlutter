import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/product_details_page_controller.dart';

class ProductDetailsPageView extends GetView<ProductDetailsPageController> {
   ProductDetailsPageView({Key? key}) : super(key: key);

   ProductDetailsPageController controller = Get.find<ProductDetailsPageController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height*0.05,
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Center(
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width*0.95,
                      height: MediaQuery.of(context).size.height*0.5,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.white),
                        color: Colors.grey,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(25.0),
                              bottomRight: Radius.circular(5.0),
                          topLeft: Radius.circular(25.0),
                          bottomLeft: Radius.circular(5.0)),

                    ),
                      child:Padding(
                        padding: const EdgeInsets.only(left: 45.0,right: 45.0,bottom: 24,top: 68),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.grey),
                            image: DecorationImage(
                                image: AssetImage("assets/images/cofee.jpg"),
                                fit: BoxFit.cover
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                          ),
                          height: MediaQuery.of(context).size.height*0.2,
                          width: MediaQuery.of(context).size.width*0.2,
                          // child: Image.asset('assets/images/cofee.jpg'),
                        ),
                      ) ,
                    ),
                    Positioned(
                      top: 30,
                      right: 20,
                      child: Container(
                        height: 10,
                        width: 15,
                        // color: Colors.blue,
                        child: Center(
                          child: Icon(Icons.heart_broken_sharp)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.02,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Container(
                  child: Text("Robuosta Cherry PB",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize:20)),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Container(
                  child: Text("4 ton Available",style: TextStyle(color: Colors.deepOrangeAccent,
                      fontSize: 10,fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Container(
                  child: Text("Details",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize:20)),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 33,
                ),
                Container(
                  width: MediaQuery.of(context).size.width*0.8,
                  child: Text("Nike Dri-Fit is a polyester fabric designed to help you keep dry so you can more comfortably work harder,longer.",
                      style: TextStyle(color: Colors.grey,fontSize:12)),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 33,
                ),
                Container(
                  width: MediaQuery.of(context).size.width*0.8,
                  child: Text("\$199.00/ton",
                      style: TextStyle(color: Colors.deepOrangeAccent,fontSize:22,fontWeight: FontWeight.bold,)),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 33,
                ),
                Container(
                  width: MediaQuery.of(context).size.width*0.8,
                  child: Text("Quantity Required:",
                      style: TextStyle(color: Colors.black,fontSize:17,fontWeight: FontWeight.bold,)),
                ),
              ],
            ),

          ],
        ),
      ),
        bottomNavigationBar:
       Padding(
         padding: const EdgeInsets.all(13.0),
         child: MaterialButton(
          child: Text(
           "Add to Cart",
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
          color: Colors.deepOrange,
           shape:RoundedRectangleBorder(
             borderRadius: BorderRadius.all(Radius.circular(10)),
             side: BorderSide(color: Colors.deepOrange)
           ) ,
          onPressed: () {},
          height: 45,
      ),
       )


    );
  }
}
