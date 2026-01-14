import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_app/ui/detail/product_view.dart';
import 'package:stacked_app/ui/home/home_viewmodel.dart';
import 'package:stacked_app/ui/save/save_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => HomeViewmodel(),
      builder: (context, model, child) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              model.txt1,
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              model.txt2,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
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
                          child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SaveView(),
                                ),
                              );
                            },
                            icon: Icon(
                              Icons.bookmark_outline,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    //=============================================
                    Text(
                      model.txt3,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      model.txt4,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(height: 10),

                    //=================================================
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: model.tabs.length,
                        itemBuilder: (context, index) {
                          bool isSelected = model.selectedIndex == index;

                          return GestureDetector(
                            onTap: () =>
                                model.setSelectedIndex(index), // ✅ tab change
                            child: Container(
                              decoration: BoxDecoration(
                                color: isSelected
                                    ? Colors.black
                                    : Color(0xffEAF1FF),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              margin: EdgeInsets.only(right: 11),
                              height: 30,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                child: Center(
                                  child: Text(
                                    model.tabs[index],
                                    style: TextStyle(
                                      color: isSelected
                                          ? Colors.white
                                          : Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),

                    SizedBox(height: 34),
                    Text(
                      "Best for you",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 14),

                    //=========================================
                    SizedBox(
                      height: 320,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ProductView(),
                                ),
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Image.asset("assets/images/card.png"),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 25),

                    //======================================
                    Text(
                      "Nearby your location",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 14),

                    SizedBox(
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 7,
                        itemBuilder: (context, index) {
                          return Container(
                            child: Image.asset("assets/images/card2.png"),
                          );
                        },
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
