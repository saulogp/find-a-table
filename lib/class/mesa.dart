class TableClass {
  List<Success> success;

  TableClass({this.success});

  TableClass.fromJson(Map<String, dynamic> json) {
    if (json['success'] != null) {
      success = new List<Success>();
      json['success'].forEach((v) {
        success.add(new Success.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.success != null) {
      data['success'] = this.success.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Success {
  int iD;
  String createdAt;
  String updatedAt;
  Null deletedAt;
  String thumbnail;
  String name;
  String description;
  int numberofparticipants;
  int maxofparticipants;
  int privacy;
  String rpgsystem;
  String otherlinks;
  List<Idusers> idusers;
  List<Permissions> permissions;

  Success(
      {this.iD,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.thumbnail,
      this.name,
      this.description,
      this.numberofparticipants,
      this.maxofparticipants,
      this.privacy,
      this.rpgsystem,
      this.otherlinks,
      this.idusers,
      this.permissions});

  Success.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    createdAt = json['CreatedAt'];
    updatedAt = json['UpdatedAt'];
    deletedAt = json['DeletedAt'];
    thumbnail = json['thumbnail'];
    name = json['name'];
    description = json['description'];
    numberofparticipants = json['numberofparticipants'];
    maxofparticipants = json['maxofparticipants'];
    privacy = json['privacy'];
    rpgsystem = json['rpgsystem'];
    otherlinks = json['otherlinks'];
    if (json['idusers'] != null) {
      idusers = new List<Idusers>();
      json['idusers'].forEach((v) {
        idusers.add(new Idusers.fromJson(v));
      });
    }
    if (json['permissions'] != null) {
      permissions = new List<Permissions>();
      json['permissions'].forEach((v) {
        permissions.add(new Permissions.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.iD;
    data['CreatedAt'] = this.createdAt;
    data['UpdatedAt'] = this.updatedAt;
    data['DeletedAt'] = this.deletedAt;
    data['thumbnail'] = this.thumbnail;
    data['name'] = this.name;
    data['description'] = this.description;
    data['numberofparticipants'] = this.numberofparticipants;
    data['maxofparticipants'] = this.maxofparticipants;
    data['privacy'] = this.privacy;
    data['rpgsystem'] = this.rpgsystem;
    data['otherlinks'] = this.otherlinks;
    if (this.idusers != null) {
      data['idusers'] = this.idusers.map((v) => v.toJson()).toList();
    }
    if (this.permissions != null) {
      data['permissions'] = this.permissions.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Idusers {
  int iD;
  String createdAt;
  String updatedAt;
  Null deletedAt;
  int idUser;
  String nickname;
  String name;
  String lastname;
  String avatar;
  String datanascimento;
  bool deleted;
  Null tables;

  Idusers(
      {this.iD,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.idUser,
      this.nickname,
      this.name,
      this.lastname,
      this.avatar,
      this.datanascimento,
      this.deleted,
      this.tables});

  Idusers.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    createdAt = json['CreatedAt'];
    updatedAt = json['UpdatedAt'];
    deletedAt = json['DeletedAt'];
    idUser = json['id_user'];
    nickname = json['nickname'];
    name = json['name'];
    lastname = json['lastname'];
    avatar = json['avatar'];
    datanascimento = json['datanascimento'];
    deleted = json['deleted'];
    tables = json['tables'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.iD;
    data['CreatedAt'] = this.createdAt;
    data['UpdatedAt'] = this.updatedAt;
    data['DeletedAt'] = this.deletedAt;
    data['id_user'] = this.idUser;
    data['nickname'] = this.nickname;
    data['name'] = this.name;
    data['lastname'] = this.lastname;
    data['avatar'] = this.avatar;
    data['datanascimento'] = this.datanascimento;
    data['deleted'] = this.deleted;
    data['tables'] = this.tables;
    return data;
  }
}

class Permissions {
  int iD;
  String createdAt;
  String updatedAt;
  Null deletedAt;
  String permission;
  int nickname;

  Permissions(
      {this.iD,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.permission,
      this.nickname});

  Permissions.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    createdAt = json['CreatedAt'];
    updatedAt = json['UpdatedAt'];
    deletedAt = json['DeletedAt'];
    permission = json['permission'];
    nickname = json['nickname'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.iD;
    data['CreatedAt'] = this.createdAt;
    data['UpdatedAt'] = this.updatedAt;
    data['DeletedAt'] = this.deletedAt;
    data['permission'] = this.permission;
    data['nickname'] = this.nickname;
    return data;
  }
}
