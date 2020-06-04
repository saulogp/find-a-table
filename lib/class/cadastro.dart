class Cadastro {
  String waiting;

  Cadastro({this.waiting});

  Cadastro.fromJson(Map<String, dynamic> json) {
    waiting = json['waiting'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['waiting'] = this.waiting;
    return data;
  }
}