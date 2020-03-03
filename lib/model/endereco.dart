import 'dart:convert';

class Endereco {
    int id;
    String logradouro;
    String numero;
    String complemento;
    String cep;
    String estado;
    String cidade;
    String bairro;

  Endereco({
    this.id,
    this.logradouro,
    this.numero,
    this.complemento,
    this.cep,
    this.estado,
    this.cidade,
    this.bairro,
  });

  Endereco copyWith({
    int id,
    String logradouro,
    String numero,
    String complemento,
    String cep,
    String estado,
    String cidade,
    String bairro,
  }) {
    return Endereco(
      id: id ?? this.id,
      logradouro: logradouro ?? this.logradouro,
      numero: numero ?? this.numero,
      complemento: complemento ?? this.complemento,
      cep: cep ?? this.cep,
      estado: estado ?? this.estado,
      cidade: cidade ?? this.cidade,
      bairro: bairro ?? this.bairro,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'logradouro': logradouro,
      'numero': numero,
      'complemento': complemento,
      'cep': cep,
      'estado': estado,
      'cidade': cidade,
      'bairro': bairro,
    };
  }

  static Endereco fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return Endereco(
      id: map['id'],
      logradouro: map['logradouro'],
      numero: map['numero'],
      complemento: map['complemento'],
      cep: map['cep'],
      estado: map['estado'],
      cidade: map['cidade'],
      bairro: map['bairro'],
    );
  }

  String toJson() => json.encode(toMap());

  static Endereco fromJson(String source) => fromMap(json.decode(source));

  @override
  String toString() {
    return 'Endereco id: $id, logradouro: $logradouro, numero: $numero, complemento: $complemento, cep: $cep, estado: $estado, cidade: $cidade, bairro: $bairro';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
  
    return o is Endereco &&
      o.id == id &&
      o.logradouro == logradouro &&
      o.numero == numero &&
      o.complemento == complemento &&
      o.cep == cep &&
      o.estado == estado &&
      o.cidade == cidade &&
      o.bairro == bairro;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      logradouro.hashCode ^
      numero.hashCode ^
      complemento.hashCode ^
      cep.hashCode ^
      estado.hashCode ^
      cidade.hashCode ^
      bairro.hashCode;
  }
}
