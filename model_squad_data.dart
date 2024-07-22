import 'dart:convert';

import 'model_squad_member.dart';

class SquadData {
  String squadName;
  String homeTown;
  int formed;
  String secretBase;
  bool active;

  List<SquadMemberData> members = [];

  SquadData({
    required this.squadName,
    required this.homeTown,
    required this.formed,
    required this.secretBase,
    required this.active,
    required this.members,
  });

  static SquadData fromMap(Map<String, dynamic> map) {
    String squadName = map['squadName'];
    String homeTown = map['homeTown'];
    int formed = map['formed'];
    String secretBase = map['secretBase'];
    bool active = map['active'];
    //
    List<dynamic> list = map['members'];

    List<SquadMemberData> squadMembers =
    list.map((dynamic e) => SquadMemberData.fromMap(e)).toList();

    return SquadData(
      squadName: squadName,
      homeTown: homeTown,
      formed: formed,
      secretBase: secretBase,
      active: active,
      members: squadMembers,
    );
  }

  static SquadData fromJsonString(String jsonString) {
    Map<String, dynamic> map = jsonDecode(jsonString);
    return fromMap(map);
  }
}