// ignore_for_file: file_names
import 'package:faker/faker.dart';

class Box {
  String title;
  String address;
  String timeLeft;

  //Constructor
  Box(this.title, this.address, this.timeLeft);
  
  factory Box.fromJson(Map<String, dynamic> json) {
    Box b = Box(json['title'], json['address'], json['timeLeft']);
    return b;
  }

  static sampleBoxs() {
    return List<Box>.generate(
        10, (index) => Box(faker.lorem.word(), faker.lorem.word(), faker.lorem.word()));
  }
}
