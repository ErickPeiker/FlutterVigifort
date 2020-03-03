import 'dart:convert';

import 'package:myapp/model/endereco.dart';
import 'package:myapp/model/foto_funcionario.dart';
import 'package:myapp/model/telefone_funcionario.dart';

class Terceiro {
  int id;
  String nome;
  String cpf;
  String rg;
  String drt;
  String nrCvn;
  Endereco endereco;
  List<TelefoneTerceiro> telefones;
  DateTime ultimaReciclagem;
  bool vencimentoReciclagem;
  bool grandesEventos;
  List<FotoTerceiro> fotos;

  Terceiro({
	this.id,
	this.nome,
	this.cpf,
	this.rg,
	this.drt,
	this.nrCvn,
	this.endereco,
	this.telefones,
	this.ultimaReciclagem,
	this.vencimentoReciclagem,
	this.grandesEventos,
	this.fotos,
  });

  Terceiro copyWith({
	int id,
	String nome,
	String cpf,
	String rg,
	String drt,
	String nrCvn,
	Endereco endereco,
	List<TelefoneTerceiro> telefones,
	DateTime ultimaReciclagem,
	bool vencimentoReciclagem,
	bool grandesEventos,
	List<FotoTerceiro> fotos,
  }) {
	return Terceiro(
	  id: id ?? this.id,
	  nome: nome ?? this.nome,
	  cpf: cpf ?? this.cpf,
	  rg: rg ?? this.rg,
	  drt: drt ?? this.drt,
	  nrCvn: nrCvn ?? this.nrCvn,
	  endereco: endereco ?? this.endereco,
	  telefones: telefones ?? this.telefones,
	  ultimaReciclagem: ultimaReciclagem ?? this.ultimaReciclagem,
	  vencimentoReciclagem: vencimentoReciclagem ?? this.vencimentoReciclagem,
	  grandesEventos: grandesEventos ?? this.grandesEventos,
	  fotos: fotos ?? this.fotos,
	);
  }

	Map<String, dynamic> toMap() {
		return {
		'id': id,
		'nome': nome,
		'cpf': cpf,
		'rg': rg,
		'drt': drt,
		'nrCvn': nrCvn,
		'endereco': endereco.toMap(),
		'telefones':
			List<dynamic>.from(telefones.map((x) => x.toMap())),
		'ultimaReciclagem': ultimaReciclagem.millisecondsSinceEpoch,
		'vencimentoReciclagem': vencimentoReciclagem,
		'grandesEventos': grandesEventos,
		'fotos':
			List<dynamic>.from(fotos.map((x) => x.toMap())),
		};
	}

	static Terceiro fromMap(Map<String, dynamic> map) {
		if (map == null) return null;
		return Terceiro(
			id: map['id'],
			nome: map['nome'],
			cpf: map['cpf'],
			rg: map['rg'],
			drt: map['drt'],
			nrCvn: map['nrCvn'],
			endereco: map['endereco'] != null ? Endereco.fromMap(map['endereco']) : null,
			telefones: map['telefones'] != null ? List<TelefoneTerceiro>.from(map['telefones']?.map((x) => TelefoneTerceiro.fromMap(x))) : null,
			ultimaReciclagem: map['ultimaReciclagem'] != null ?DateTime.fromMillisecondsSinceEpoch(map['ultimaReciclagem']) : null,
			vencimentoReciclagem: map['vencimentoReciclagem'],
			grandesEventos: map['grandesEventos'],
			fotos: map['fotos'] != null ? List<FotoTerceiro>.from(map['fotos']?.map((x) => FotoTerceiro.fromMap(x))) : null,
		);
	}

  	String toJson() => json.encode(toMap());

  	static Terceiro fromJson(String source) => fromMap(json.decode(source));

 	static List<Terceiro> fromListJson(String source) {
		final terceiros = List<Terceiro>();
		Terceiro terceiro;
		try{
			List list = json.decode(source);
			for(Map map in list) {
				terceiro = fromMap(map);
				terceiros.add(terceiro);
			}
			return terceiros;
		} catch(error, exception) {
			print("Erro: $error");
			print("$exception");
			return null;
		}
  }

  @override
  String toString() {
	return 'Funcionario id: $id, nome: $nome, cpf: $cpf, rg: $rg, drt: $drt, nrCvn: $nrCvn, endereco: $endereco, telefones: $telefones, ultimaReciclagem: $ultimaReciclagem, vencimentoReciclagem: $vencimentoReciclagem, grandesEventos: $grandesEventos, fotos: $fotos';
  }

  @override
  bool operator ==(Object o) {
	if (identical(this, o)) return true;

	return o is Terceiro &&
		o.id == id &&
		o.nome == nome &&
		o.cpf == cpf &&
		o.rg == rg &&
		o.drt == drt &&
		o.nrCvn == nrCvn &&
		o.endereco == endereco &&
		o.telefones == telefones &&
		o.ultimaReciclagem == ultimaReciclagem &&
		o.vencimentoReciclagem == vencimentoReciclagem &&
		o.grandesEventos == grandesEventos &&
		o.fotos == fotos;
  }

  @override
  int get hashCode {
	return id.hashCode ^
		nome.hashCode ^
		cpf.hashCode ^
		rg.hashCode ^
		drt.hashCode ^
		nrCvn.hashCode ^
		endereco.hashCode ^
		telefones.hashCode ^
		ultimaReciclagem.hashCode ^
		vencimentoReciclagem.hashCode ^
		grandesEventos.hashCode ^
		fotos.hashCode;
  }
}
