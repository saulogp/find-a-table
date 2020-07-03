class Perfil {
  String nickname;
  String name;
  String lastname;
  String avatar;
  String datanascimento;

  Perfil(
      {this.nickname,
        this.name,
        this.lastname,
        this.avatar,
        this.datanascimento});

  Perfil.fromJson(Map<String, dynamic> json) {
    nickname = json['nickname'];
    name = json['name'];
    lastname = json['lastname'];
    avatar = json['avatar'];
    datanascimento = json['datanascimento'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nickname'] = this.nickname;
    data['name'] = this.name;
    data['lastname'] = this.lastname;
    data['avatar'] = this.avatar;
    data['datanascimento'] = this.datanascimento;
    return data;
  }
}