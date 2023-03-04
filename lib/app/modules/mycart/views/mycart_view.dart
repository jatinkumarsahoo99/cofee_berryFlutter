import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/mycart_controller.dart';

class MycartView extends GetView<MycartController> {
   MycartView({Key? key}) : super(key: key);

   MycartController controller = Get.find<MycartController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height*0.7,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Text("My Cart",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20)),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: ListView.builder(
                          itemCount: 3,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: (){
                                Get.toNamed(Routes.PRODUCT_DETAILS_PAGE);
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(left: 17.0,right: 17,top: 6,bottom: 6),
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(width: 2, color: Colors.white),
                                        image: DecorationImage(
                                          image: AssetImage("assets/images/cofee.jpg",),
                                          fit: BoxFit.cover,
                                          // scale: 30
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
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Text("Total"),
          )


        ],
      ),
      bottomNavigationBar:  Padding(
        padding: const EdgeInsets.all(13.0),
        child: MaterialButton(
          child: Text(
            "Checkout",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          color: Colors.deepOrange,
          shape:RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              side: BorderSide(color: Colors.deepOrange)
          ) ,
          onPressed: () {},
          height: 45,
        ),
      ),
    );
  }
}
