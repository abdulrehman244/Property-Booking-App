import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_app/ui/detail/product_view.dart';
import 'package:stacked_app/ui/save/save_viewmodel.dart';

class SaveView extends StatelessWidget {
  const SaveView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => SaveViewmodel(),
      builder: (context, model, child) {
        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 45),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Wishlist',
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
                    SizedBox(height: 20),

                    Container(
                      margin: EdgeInsets.only(bottom: 20),

                      child: Stack(
                        children: [
                          GestureDetector(
                            onTap: () {
                               Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ProductView(),
                                ),
                              );
                            },
                            child: Container(child: Image.asset("assets/images/w1.png"))),

                          Positioned(
                            right: 30,
                            bottom: 50,
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Color(0xffEAF1FF),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.bookmark_outline,
                                  color: Colors.black,
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Stack(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ProductView(),
                                ),
                              );
                            },
                            child: Container(
                              child: Image.asset("assets/images/w2.png"),
                            ),
                          ),
                          Positioned(
                            right: 30,
                            bottom: 50,
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Color(0xffEAF1FF),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.bookmark_outline,
                                  color: Colors.black,
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
