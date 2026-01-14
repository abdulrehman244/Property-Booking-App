import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_app/ui/detail/product_viewmodel.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => ProductViewmodel(),
      builder: (context, model, child) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 45),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Detail',
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 25,
                          ),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Color(0xffEAF1FF),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text("<", style: TextStyle(fontSize: 30)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Image.asset("assets/images/image.png"),
                    SizedBox(height: 10),
                
                    //==================================
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "CRAFTSMAN HOUSE",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            Text("520 N Beaudry Ave, Los Angeles"),
                          ],
                        ),
                        Spacer(),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Color(0xffEAF1FF),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(
                            Icons.bookmark_outline,
                            color: Colors.black,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                    Image.asset("assets/images/detailfileimage.png"),
                    SizedBox(height: 20,),
                    //====================================
                
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2024/09/18/07/26/man-9055513_1280.jpg"),
                        ),
                        SizedBox(width: 10
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        Text("Steve Dane",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18),),
                        Text("Owner Craftsman House",style: TextStyle(color: Colors.grey))
                          ],
                        ),
                        Spacer(),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.phone,color: Colors.white,),
                                SizedBox(width: 5),
                                Text("Call",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800,fontSize: 18),),
                            
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                        Text("Completely redone in 2021. 4 bedrooms. 2 bathrooms. 1 garahe. amazing curb oppeal and enterain areawater vews. Tons of built-ins & extras. Read More"),
                    SizedBox(height: 20,),
                    Text("Gallery",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 15),),
                    SizedBox(height: 10,),
                    Image.asset("assets/images/detailimage2.png"),
                    SizedBox(height: 20,),
                    Text("Prize",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 15),),                
                    Row(
                      children: [
                        Text("\$5990000",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w800),),
                        Spacer(),
                        TextButton(
                          onPressed: (){},
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)
                          ) ,
                          padding: EdgeInsets.symmetric(horizontal: 20)
                        ),
                         child: Text("Buy Now",  style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.white
                          ),))
                      ],
                    )
                
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
