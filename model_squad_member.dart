//mô hình hòa bằng lớp SquadMemberData
//phương thức tĩnh fromMap được sử dụng để chuyển đổi 1 đối tượng Map<String,dynamic>
//thành đối tượng SquadMemberData

class SquadMemberData {
  String name;
  int age;
  String secretIdentity;

  List<String> powers = [];

  SquadMemberData(this.name, this.age, this.secretIdentity, this.powers);

  // {
  // "name": "Molecule Man",
  // "age": 29,
  // "secretIdentity": "Dan Jukes",
  // "powers": [
  // "Radiation resistance",
  // "Turning tiny",
  // "Radiation blast"
  // ]
  // },
  static SquadMemberData fromMap(Map<String, dynamic> map) {
    String name = map['name'];
    int age = map['age'];
    String secretIdentity = map['secretIdentity'];

    List<dynamic> list = map['powers'];
    List<String> powers = list.map((e) => e as String).toList();

    return SquadMemberData(name, age, secretIdentity, powers);
  }
}
