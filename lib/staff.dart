//this dart file is used to transfer data between UI(user interactions).
import 'package:staffdata/dbhelper.dart';

class Staff {
  //inialising the uses & variables of the table
  int id;
  String name;
  String works;

  Staff(this.id, this.name, this.works);
  //mapping of the inialtised variables to user input
  Staff.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    name = map['name'];
    works = map['works'];
  }
  Map<String, dynamic> toMap(){
    return{
      DatabaseHelper.columnId: id,
      DatabaseHelper.columnId: name,
      DatabaseHelper.columnId: works,
    };
  }
}