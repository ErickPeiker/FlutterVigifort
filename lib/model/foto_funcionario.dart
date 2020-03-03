import 'dart:convert';

class FotoTerceiro {
  int id;
  String nome;
  String tipo;

  FotoTerceiro({
    this.id,
    this.nome,
    this.tipo,
  });

  FotoTerceiro copyWith({
    int id,
    String nome,
    String tipo,
  }) {
    return FotoTerceiro(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      tipo: tipo ?? this.tipo,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'tipo': tipo,
    };
  }

  static FotoTerceiro fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return FotoTerceiro(
      id: map['id'],
      nome: map['nome'],
      tipo: map['tipo'],
    );
  }

  String toJson() => json.encode(toMap());

  static FotoTerceiro fromJson(String source) =>
      fromMap(json.decode(source));

  @override
  String toString() => 'FotoFuncionario id: $id, nome: $nome, tipo: $tipo';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is FotoTerceiro &&
        o.id == id &&
        o.nome == nome &&
        o.tipo == tipo;
  }

  @override
  int get hashCode => id.hashCode ^ nome.hashCode ^ tipo.hashCode;
}
