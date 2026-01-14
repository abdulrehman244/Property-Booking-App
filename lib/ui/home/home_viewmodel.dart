import 'package:stacked/stacked.dart';

class HomeViewmodel extends BaseViewModel {
  String txt1 = "Location";
  String txt2 = "Los Angeles, CA";
  String txt3 = "Discover Best";
  String txt4 = "Suitable Property";

  int selectedIndex = 0;
  

  List<String> tabs = ["Home", "Apartement", "Flot", "Postions"];

  void setSelectedIndex(int index) {
    selectedIndex = index;
    notifyListeners(); 
  }

}
