import 'dart:convert';

class TelefoneTerceiro {
  int id;
  int numero;

  TelefoneTerceiro({
    this.id,
    this.numero,
  });

  TelefoneTerceiro copyWith({
    int id,
    int numero,
  }) {
    return TelefoneTerceiro(
      id: id ?? this.id,
      numero: numero ?? this.numero,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'numero': numero,
    };
  }

  static TelefoneTerceiro fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return TelefoneTerceiro(
      id: map['id'],
      numero: map['numero'],
    );
  }

  String toJson() => json.encode(toMap());

  static TelefoneTerceiro fromJson(String source) =>
      fromMap(json.decode(source));

  @override
  String toString() => 'TelefoneFuncionario id: $id, numero: $numero';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is TelefoneTerceiro && o.id == id && o.numero == numero;
  }

  @override
  int get hashCode => id.hashCode ^ numero.hashCode;
}
