package br.edu.unirn

class Pessoa {
  String identificacaoPaciente
  String nome
  Date dataNascimento
  Float peso
  String observacao

  Date dateCreated
  Date lastUpdated

  static constraints = {
    nome()
    identificacaoPaciente()
    dataNascimento nullable:true
    peso nullable:true
    observacao widget:'textarea',nullable:true
  }
}
