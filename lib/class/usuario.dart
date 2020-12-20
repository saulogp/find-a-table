class Usuario {
  String success;
  bool emailCheck, existe;

  Usuario({this.success, this.emailCheck, this.existe});

  Usuario.fromJson(Map<String, dynamic> json) {
    success = json['success'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    return data;
  }

  String toString(){
    return 'Usuario(success: $success)';
  }
}